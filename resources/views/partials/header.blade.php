
<div id="top">&nbsp;</div>

<div class="row" style="margin:20px auto 0 auto;">
    <div class="hidden-xs hidden-sm col-md-12 col-lg-12 header-block">
        <!-- The non-breaking spaces with 'work' force the logo image to be centered above the thumbs -->
        &nbsp;&nbsp;&nbsp;<span onclick="gotoPage('home');"
              onmouseover="$(this).addClass('white-link-hover');"
                                                 onmouseout="$(this).removeClass('white-link-hover')">work</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
                                                  onmouseout="$(this).removeClass('white-link-hover')">about</span>
        <span onclick="gotoPage('top');" class="go-top"><img src="{{config('app.base_url')}}img/logo.png" /></span>
        <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
                                                    onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('merch');" onmouseover="$(this).addClass('white-link-hover')"
                                                  onmouseout="$(this).removeClass('white-link-hover')">merch</span>
    </div>
    <div class="hidden-xs col-sm-12 hidden-md hidden-lg header-block">
        <div class="row" style="margin-bottom:20px;">
            <span onclick="gotoPage('top');" class="go-top"><img src="{{config('app.base_url')}}img/logo.png" /></span>
        </div>
        <span onclick="gotoPage('home');" onmouseover="$(this).addClass('white-link-hover');"
              onmouseout="$(this).removeClass('white-link-hover')">work</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
              onmouseout="$(this).removeClass('white-link-hover')">about</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
              onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('merch');" onmouseover="$(this).addClass('white-link-hover')"
              onmouseout="$(this).removeClass('white-link-hover')">merch</span>
    </div>
    <div class="col-xs-12 hidden-sm hidden-md hidden-lg header-block">
        <div class="row" style="margin-bottom:20px;">
            <span onclick="gotoPage('top');" class="go-top"><img src="{{config('app.base_url')}}img/logo.png" /></span>
        </div>
        <table style="margin-bottom:10px;margin:0 auto 0 auto;">
            <tbody>
            <tr>
                <td style="text-align:center;width:40%;">
                    <span onclick="gotoPage('home');" onmouseover="$(this).addClass('white-link-hover');"
                          onmouseout="$(this).removeClass('white-link-hover')">work</span>
                </td>
                <td style="text-align:center;padding: 0 15px;width:20%;"><img src="{{config('app.base_url')
                }}img/square.png"
                    /></td>
                <td style="text-align:center;width:40%;">
                    <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
                          onmouseout="$(this).removeClass('white-link-hover')">about</span>
                </td>
            </tr>
            <tr>
                <td style="text-align:center;">
                    <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
                          onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
                </td>
                <td style="text-align:center;padding: 0 15px"><img src="{{config('app.base_url')}}img/square.png"
                    /></td>
                <td style="text-align:center;">
                    <span onclick="gotoPage('merch');" onmouseover="$(this).addClass('white-link-hover')"
                          onmouseout="$(this).removeClass('white-link-hover')">merch</span>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script type="text/javascript">
    function gotoPage(aid)
    {
        @if (Request::is('home'))
                scrollToAnchor(aid);
        @else
                document.location = ("{{config('app.base_url')}}" + "home#" + aid);
        @endif
    }
    function scrollToAnchor(aid)
    {
        var aTag = $("div[id='"+ aid +"']");
        $('html,body').animate({scrollTop: aTag.offset().top},'slow');
    }

    $(document).ready( function()
    {
        addEvent(window, "resize", handleResizeEvent);

        // Calculate the apsect ratio now, so that it is correct on page load
        calcAspectRatio();

        // Also ensure that the About text panel is at least as high as the image panel
        calcAboutTextPanelHeight();

        // Check if we are running the fish tank animation and kick it off
        bodymovinPanel = document.getElementById('bodymovin');
        if (bodymovinPanel) {
            var animData = {
                wrapper: bodymovinPanel,
                animType: 'svg',
                loop: true,
                prerender: false,
                autoplay: true,
                path: '{{config('app.base_url')}}animation/fishTank.json'
            };
            var anim = bodymovin.loadAnimation(animData);
        }
    });

    var handleResizeEvent = function (event) {

        calcAspectRatio(event);
        calcAboutTextPanelHeight(event);
    };

    var calcAspectRatio = function (event) {
        // On resize we recalculate the height of the iframe to maintain aspect ratio
        if (vidFrame = $("#video-frame")) {
            vidWidth = vidFrame.width();
            //vidHeight = (vidWidth / 16) * 9;
            vidHeight = (Math.round(vidWidth * 0.5625, 0) + 20);
            vidFrame.css('height', vidHeight);
        }
    };

    var calcAboutTextPanelHeight = function (event) {
        // On resize we recalculate the height of the About text panel to make sure is at least as big as the image one
        if ((leftContainer = $("#about-left-container"))
         && (rightContainer = $("#about-right-container"))) {
            if (rightContainer.height() < leftContainer.height()) {
                rightContainer.css('min-height', leftContainer.height());
            }
        }
    };

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

</script>
