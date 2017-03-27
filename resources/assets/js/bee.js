/**
 * On resize do some specific responsiveness adjustments
 *
 * @param event
 */
var handleResizeEvent = function (event) {

    calcAspectRatio(event);
    calcAboutTextPanelHeight(event);
};

/**
 * Maintain aspect ratio of the video panel
 *
 * @param event
 */
var calcAspectRatio = function (event) {
    // On resize we recalculate the height of the iframe to maintain aspect ratio
    // There may be multiple video frames, so we are using the class to identify videos
    $(".video-frame").each(function(index, elem) {
        var vidFrame = $(elem);
        var vidWidth = vidFrame.width();
        // If we switch the border width down to zero, which we do for mobile, we no longer need the adjustment
        var borderWidth = vidFrame.css("border-left-width");
        var adjustment = 20;
        if (borderWidth == "0px") {
            adjustment = 0;
        }
        vidHeight = (Math.round(vidWidth * 0.5625, 0) + adjustment);
        vidFrame.css('height', vidHeight);
    });
};

/**
 * Check the height of the About panels and ensure they match up correctly
 *
 * @param event
 */
var calcAboutTextPanelHeight = function (event) {
    var rowContainer = null;
    var leftContainer = null;
    var rightContainer = null;
    // On resize we recalculate the height of the About text panel to make sure is at least as big as the image one
    if ((rowContainer = $("#about-row-container"))
        && (leftContainer = $("#about-left-container"))
        && (rightContainer = $("#about-right-container"))) {
        leftContainer.css('min-height', rowContainer.height());
        // Must adjust the right hand panel to force it to fill the entire outer panel
        rightContainer.css('min-height', rowContainer.height() + 10);
    }
};

/**
 * Cross browser event handling
 *
 * @param object
 * @param type
 * @param callback
 */
var addEvent = function(object, type, callback) {
    if (object == null || typeof(object) == 'undefined') return;
    if (object.addEventListener) {
        object.addEventListener(type, callback, false);
    } else if (object.attachEvent) {
        object.attachEvent("on" + type, callback);
    } else {
        object["on"+type] = callback;
    }
};

var mail2 = function(name, dom1, dom2, tld, link) {
    document.location=('mailto:' + name + '@' + dom1 + dom2 + '.' + tld);
}
