
gulp = require('gulp')
deku = require 'deku'
sequence = require('run-sequence')
exec = require('child_process').exec
env =
  dev: true
  main: 'http://localhost:8080/build/main.js'

gulp.task 'script', ->
  coffee = require('gulp-coffee')
  gulp
  .src 'src/*.coffee'
  .pipe coffee()
  .pipe gulp.dest('lib/')

gulp.task 'html', (cb) ->
  require('cirru-script/lib/register')
  html = require('./template.cirru')
  fs = require('fs')
  assets = undefined
  content = require './src/content'
  app = deku.tree (deku.element content)
  env.body = deku.renderString app
  unless env.dev
    assets = require('./build/assets.json')
    env.main = './build/' + assets.main

  fs.writeFile 'index.html', html(env), cb

gulp.task 'del', (cb) ->
  del = require('del')
  del [ 'build' ], cb

gulp.task 'webpack', (cb) ->
  if env.dev
    command = 'webpack'
  else
    command = 'webpack --config webpack.min.coffee --progress'
  exec command, (err, stdout, stderr) ->
    console.log stdout
    console.log stderr
    cb err

gulp.task 'build', (cb) ->
  env.dev = false
  sequence 'del', 'webpack', 'html', cb