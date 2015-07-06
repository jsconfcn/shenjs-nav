
var
  gulp $ require :gulp

gulp.task :html $ \ (cb)
  var
    template $ require :./template
    fs $ require :fs
    data $ {}
  fs.writeFile :index.html (template data)
