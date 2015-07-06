
var
  stir $ require :stir-template
  ({}~ div span a) stir

var link $ \ (url text)
  return $ a
    {}
      :href url
      :target :_blank
    , text

var line $ \ ((a))
  return $ div ({} (:class :line)) (... a)

var text $ \ (x)
  return $ span null x

var
  hashUrl :http://weibo.com/p/100808ab728ac94c407edd799c4f95809d025f
  weiboUrl :http://weibo.com/u/5070687652
  repoUrl :https://github.com/jsconfcn/shenjs-nav
  f2eUrl :http://f2e.im/node/shenjs
  qrCode :images/qrcode.jpg
  bearyChatUrl :https://jsconfcn.bearychat.com/
  jianliaoUrl :https://jianliao.com/v1/via/b0743480un
  slackUrl :https://shenjs.herokuapp.com/
  qqCode :images/qq-qrcode.png

= module.exports $ \ ()
  return $ div ({} (:class :page-content))
    div ({} (:class :header)) :深JS导航
    div ({} (:class :section))
      div ({} (:class :heading)) ":官方"
      div ({} (:class :table))
        line
          text ":微博"
          link weiboUrl :@JSConfChina
        line
          text ":话题"
          link hashUrl ":#shenjs#"
        line
          text ":微信群"
          link qrCode ":扫描二维码(07-13)"

    div ({} (:class :section))
      div ({} (:class :heading)) ":论坛"
      div ({} (:class :table))
        line
          text ":F2E.im"
          link f2eUrl :shenjs

    div ({} (:class :section))
      div ({} (:class :heading)) ":聊天工具"
      div ({} (:class :table))
        line
          text ":BearyChat"
          link bearyChatUrl ":jsconfcn"
        line
          text ":简聊"
          link jianliaoUrl ":深JS"
        line
          text :QQ
          link qqCode ":深JS群 473719145"

    div ({} (:class :footer))
      link repoUrl ":Fork page"
