
deku = require 'deku'

div = deku.element.bind null, 'div'
span = deku.element.bind null, 'span'
img = deku.element.bind null, 'img'
a = deku.element.bind null, 'a'

link = (url, text) ->
  a class: 'link', href: url, target: '_blank', text

line = (a...) ->
  div class: 'line', a...

text = (x) ->
  span null, x

hashUrl = 'http://weibo.com/p/100808ab728ac94c407edd799c4f95809d025f'
weiboUrl = 'http://weibo.com/u/5070687652'
repoUrl = 'https://github.com/jsconfcn/shenjs-nav'
f2eUrl = 'http://f2e.im/node/shenjs'
qrCode = 'images/qrcode.jpg'
bearyChatUrl = 'https://jsconfcn.bearychat.com/'
jianliaoUrl = 'https://jianliao.com/v1/via/b0743480un'
slackUrl = 'https://shenjs.herokuapp.com/'
qqCode = 'images/qq-qrcode.png'

module.exports = render: ->
  div class: 'page-content',
    div class: 'header',
      a href: 'http://2015.jsconf.cn/',
        img src: './images/shenjs.png', '深JS导航'

    div class: 'section',
      div class: 'heading', "官方"
      div class: 'table',
        line (span class: 'name', "微博"),
          link weiboUrl, '@JSConfChina'
          span class: 'count', '1000+'
        line (span class: 'name', "话题"),
          link hashUrl, "#shenjs#"
          span class: 'count', '30+'
        line (span class: 'name', "微信群"),
          link qrCode, "扫描二维码"
          span class: 'count', '140+'

    div class: 'section',
      div class: 'heading', "论坛"
      div class: 'table',
        line (span class: 'name', "F2E.im"),
          link f2eUrl, 'shenjs'
          span class: 'count', '1+'

    div class: 'section',
      div class: 'heading', "聊天工具"
      div class: 'table',
        line (span class: 'name', "BearyChat"),
          link bearyChatUrl, "jsconfcn"
          span class: 'count', '5+'
        line (span class: 'name', "简聊"),
          link jianliaoUrl, "深JS"
          span class: 'count', '1+'
        line (span class: 'name', '深JS QQ群'),
          link qqCode, "473719145"
          span class: 'count', '40+'

    div class: 'footer',
      a href: repoUrl, target: '_blank', "Fork page"
