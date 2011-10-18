(: controller :)
xquery version "1.0-ml";

import module namespace view = "/view/default" at "/view/default.xqy";
import module namespace layout = "/layout" at "/layout.xqy";

declare option xdmp:output "method = html";

let $map := map:map()
let $noop := map:put($map, 'content-function', xdmp:function(xs:QName("view:content")))
return layout:render($map)
