
<div id="top">&nbsp;</div>

<div class="row" style="width:80%; border:0px solid red;margin:20px auto 0 auto;">
    <div class="hidden-xs hidden-sm col-md-12 col-lg-12 header-block">
        <span onclick="gotoPage('home');" onmouseover="$(this).addClass('white-link-hover');"
                                                 onmouseout="$(this).removeClass('white-link-hover')">work</span>
        <img src="img/square.png" />
        <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
                                                  onmouseout="$(this).removeClass('white-link-hover')">about</span>
        <a href="#home" class="white-link"><img src="{{config('app.base_url')}}img/logo.png" /></a>
        <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
                                                    onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
        <img src="img/square.png" />
        <span onclick="gotoPage('merch');" onmouseover="$(this).addClass('white-link-hover')"
                                                  onmouseout="$(this).removeClass('white-link-hover')">merch</span>
    </div>
    <div class="hidden-xs col-sm-12 hidden-md hidden-lg header-block">
        <div class="row" style="margin-bottom:20px;">
            <a href="#home" class="white-link"><img src="{{config('app.base_url')}}img/logo.png" /></a>
        </div>
        <span onclick="gotoPage('home');" onmouseover="$(this).addClass('white-link-hover');"
              onmouseout="$(this).removeClass('white-link-hover')">work</span>
        <img src="img/square.png" />
        <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
              onmouseout="$(this).removeClass('white-link-hover')">about</span>
        <img src="img/square.png" />
        <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
              onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
        <img src="img/square.png" />
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
                <td style="text-align:right;">
                    <span onclick="gotoPage('home');" onmouseover="$(this).addClass('white-link-hover');"
                          onmouseout="$(this).removeClass('white-link-hover')">work</span>
                </td>
                <td style="text-align:center;"><img src="img/square.png" /></td>
                <td style="text-align:left;">
                    <span onclick="gotoPage('about');" onmouseover="$(this).addClass('white-link-hover')"
                          onmouseout="$(this).removeClass('white-link-hover')">about</span>
                </td>
            </tr>
            <tr>
                <td style="text-align:right;">
                    <span onclick="gotoPage('contact');" onmouseover="$(this).addClass('white-link-hover')"
                          onmouseout="$(this).removeClass('white-link-hover')
                                                    ">contact</span>
                </td>
                <td style="text-align:center;"><img src="img/square.png" /></td>
                <td style="text-align:left;">
                    <span onclick="gotoPage('merch');" onmouseover="$(this).addClass('white-link-hover')"
                          onmouseout="$(this).removeClass('white-link-hover')">merch</span>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script type="text/javascript">
    function gotoPage(aid) {
        scrollToAnchor(aid);
    }
    function scrollToAnchor(aid) {
        var aTag = $("div[id='"+ aid +"']");
        $('html,body').animate({scrollTop: aTag.offset().top},'slow');
    }
</script>
