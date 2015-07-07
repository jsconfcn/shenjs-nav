
deku = require 'deku'
content = require './content'

div = deku.element.bind null, 'div'

app = deku.tree (deku.element content)

deku.render app, document.querySelector('#app')
