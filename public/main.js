"use strict";


$(document).ready(function() {

    $.getJSON("/v1/words").success(function(data) {
        _.each(data, function(word, index) {
            var content = "<tr><td width='20'>" + (index + 1) + "</td>";

            $("table#w-list").append(content);
        });
    });
});
