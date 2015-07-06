
ShenJS Online Comminucation
----

Page http://jsconf.cn/shenjs-nav/

### Build Page

Built with [CirruScript](http://script.cirru.org/).

```
npm i
gulp html
```

> Note: Gulp is using outdated version of `interpret` module. Use a global module to compile.
```
rm -r /usr/local/lib/node_modules/gulp/node_modules/interpret
npm i -g interpert
```