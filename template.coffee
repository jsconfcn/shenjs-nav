
stir = require 'stir-template'
{html, head, title, meta, link, script, body, div} = stir
content = require './src/content'

module.exports = (data) ->
  stir.render stir.doctype(),
    html null,
      head null,
        title null, "深JS导航"
        meta charset: 'utf-8'
        meta content: "深JS导航", name: 'keyword'
        meta name: 'viewport', content: 'width=device-width'
        link rel: 'stylesheet', href: 'style/main.css'
        link rel: 'icon', href: 'images/shenjs.png'
      body null,
        content()
