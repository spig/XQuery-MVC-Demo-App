(: helper functions :)
(: functions that are useful and help the view make code cleaner :)
xquery version "1.0-ml";

module namespace view = "/helper/application";

declare function current-year() {
    fn:year-from-dateTime(fn:current-dateTime())
};
