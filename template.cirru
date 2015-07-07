
var
  stir $ require :stir-template

var
  (object~ html head title body meta script link div a span) stir

var
  line $ \ (text)
    return $ div null text

= module.exports $ \ (data)
  return $ stir.render
    stir.doctype
    html null
      head null
        title null ":深JS导航"
        meta $ object (:charset :utf-8)
        meta $ object (:content ":深JS导航") (:name :keyword)
        meta $ object (:name :viewport) (:content :width=device-width)
        link $ object (:rel :icon) (:href :images/shenjs.png)
        link $ object (:rel :stylesheet) (:href :style/main.css)
        script $ object (:src data.main) (:defer true)
      body null
        div ({} (:id :app)) data.body
