(: view :)
xquery version "1.0-ml";

module namespace view = "/view/default";
import module namespace helper = "/helper/application" at "/helper/application.xqy";
import module namespace model = "/model/default" at "/model/default.xqy";

declare function content($map as map:map) {
    <div>Body here - valid xhtml and such</div>
};

