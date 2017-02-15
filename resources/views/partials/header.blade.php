
<div id="top">&nbsp;</div>

<div class="row" style="margin:20px auto 0 auto;">
    <div class="hidden-xs hidden-sm col-md-12 col-lg-12 header-block">
        <span onclick="gotoPage('home');" 
              onmouseover="$(this).addClass('white-link-hover');"
                                                 onmouseout="$(this).removeClass('white-link-hover')">work</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
                                                  onmouseout="$(this).removeClass('white-link-hover')">about</span>
        <a href="#top" class="white-link"><img src="{{config('app.base_url')}}img/logo.png" /></a>
        <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
                                                    onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
        <img style="padding: 0 15px;" src="{{config('app.base_url')}}img/square.png" />
        <span onclick="gotoPage('merch');" onmouseover="$(this).addClass('white-link-hover')"
                                                  onmouseout="$(this).removeClass('white-link-hover')">merch</span>
    </div>
    <div class="hidden-xs col-sm-12 hidden-md hidden-lg header-block">
        <div class="row" style="margin-bottom:20px;">
            <a href="#home" class="white-link"><img src="{{config('app.base_url')}}img/logo.png" /></a>
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
            <a href="#home" class="white-link"><img src="{{config('app.base_url')}}img/logo.png" /></a>
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
        $('.gallery-item-VV').hover( function() {
            $(this).find('.img-title').fadeIn(300);
        }, function() {
            $(this).find('.img-title').fadeOut(100);
        });
    });

    $(document).ready( function()
    {
        addEvent(window, "resize", function () {
            // On resize we recalculate the height of the ifrmae to maintain aspect ratio
            if (vidFrame = $("#video-frame")) {
                vidWidth = vidFrame.width();
//                vidHeight = vidFrame.height();
                vidHeight = (vidWidth / 16) * 9;
                vidFrame.css('height', vidHeight);
            }

        });
    });

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
