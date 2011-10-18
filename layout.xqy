(: layout :)
xquery version "1.0-ml";

module namespace layout = "/layout";
import module namespace helper = "/helper/application" at "/helper/application.xqy";

declare function render($map as map:map) {
    xdmp:set-response-content-type("text/html"),
    '<!DOCTYPE html>',
    <html>
        <head>
            <meta charset="utf-8" />
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />   
            {
                (: include js/css other header stuff from controller :)
                let $header-function := map:get($map, 'header-function')
                return if (fn:exists($header-function)) then xdmp:apply($header-function, $map) else ()
            }
        </head>
        <body>
            <div><h1>Header</h1></div>
            {
                let $content-function := map:get($map, 'content-function')
                return if (fn:exists($content-function)) then xdmp:apply($content-function, $map) else ()
            }
            <div><h6>Footer &copy; { helper:current-year() }</h6></div>
        </body>
    </html>
};
