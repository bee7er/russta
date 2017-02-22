@extends('layouts.app')
@section('title') Home :: @parent @endsection

@section('content')

    <div id="home">&nbsp;</div>
    @if(count($resources)>0)
        <div class="row-container">
            <div class="row">
                @for ($i = 0; $i < count($resources); $i++)
                    <div class="gallery-item" onclick="document.location='{{url($resources[$i]->type .'/' .
                        $resources[$i]->id .'')}}';">
                        <img id="{!! $resources[$i]->id !!}" class="work-image col-xs-12 col-sm-6 col-md-6 col-lg-4"
                             onmouseover="this.src='{!! url('img/thumbs/'.$resources[$i]->hover) !!}'"
                             onmouseout="this.src='{!! url('img/thumbs/'.$resources[$i]->thumb) !!}'"
                             src="{!! url('img/thumbs/'.$resources[$i]->thumb) !!}" title="" alt="{!!
                             $resources[$i]->name !!}">
                    </div>
                    {{-- Preload image --}}
                    <style>#preload-{!! $resources[$i]->id !!} { background: url({!! url('img/thumbs/'.$resources[$i]->hover) !!}) no-repeat -9999px -9999px; }</style>
                @endfor
            </div>
        </div>
        <div class="go-top clearfix" onclick="scrollToAnchor('top');"><img src="img/gotoTopHandSTATIC.gif"
                               onmouseover="this.src='img/gotoTopHandANIM.gif'"
                               onmouseout="this.src='img/gotoTopHandSTATIC.gif'"
                               title="" style="margin: 0 auto;"></div>
    @endif

    <div class="row fish-tank-row-container">
        <div id="bodymovin" class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
             style="width:100%;height:100%;background-color:#00DAFF;"></div>
    </div>

    <div id="about" class="panel-title">about</div>
    <div id="about-left-container" class="row about-row-container">
        <div id="about-left-div" class="hidden-xs hidden-sm col-md-6 col-lg-6 about-left">
            @include('partials.about-img')
        </div>
        <div class="hidden-xs hidden-sm col-md-6 col-lg-6 about-right">
            @include('partials.about-text')
        </div>
        <div class="col-xs-12 col-sm-12 hidden-md hidden-lg about-left-vertical">
            @include('partials.about-img')
        </div>
        <div class="col-xs-12 col-sm-12 hidden-md hidden-lg about-right-vertical">
            @include('partials.about-text')
        </div>
    </div>
    <div class="go-top clearfix" onclick="scrollToAnchor('top');"><img src="img/gotoTopHandSTATIC.gif"
                               onmouseover="this.src='img/gotoTopHandANIM.gif'"
                               onmouseout="this.src='img/gotoTopHandSTATIC.gif'"
                               title="" style="margin: 0 auto;"></div>

    <div id="contact" class="panel-title">contact</div>
    <div class="row contact-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="padding:10px;">
            <p>Have a project in mind, or just want to say hi?</p>
            <p>I’d love to hear from you!.</p>
            <p><img class="col-xs-12 col-sm-12 col-md-12 col-lg-12" src="img/emailNumImage.png" title=""></p>
            <p class="center-text">Follow me!</p>
            <p class="center-text"><a target="_blank" href="https://dribbble.com/russ_ether"><img src="img/social/dribble.png" class="social-icon" title="Share on dribble" /></a><a target="_blank" href="https://www.facebook.com/profile.php?id=100013591591149"><img src="img/social/facebook.png" class="social-icon" title="Share on facebook" /></a><a target="_blank" href="https://www.instagram.com/russ_ether/"><img src="img/social/instagram.png" class="social-icon" title="Share on instagram" /></a><br><a target="_blank" href="https://www.linkedin.com/in/russether"><img src="img/social/linkedin.png" class="social-icon" title="Share on linkedin" /></a><a target="_blank" href="https://twitter.com/russ_ether"><img src="img/social/twitter.png" class="social-icon" title="Share on twitter" /></a><a target="_blank" href="https://vimeo.com/russether"><img src="img/social/vimeo.png" class="social-icon" title="Share on vimeo" /></a></p>
        </div>
    </div>
    <div class="go-top clearfix" onclick="scrollToAnchor('top');"><img src="img/gotoTopHandSTATIC.gif"
                               onmouseover="this.src='img/gotoTopHandANIM.gif'"
                               onmouseout="this.src='img/gotoTopHandSTATIC.gif'"
                               title="" style="margin: 0 auto;"></div>

    <div id="merch" class="panel-title">merch</div>
    <div class="row merch-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <p>Coming soon.</p>
            <p><img class="col-xs-12 col-sm-12 col-md-12 col-lg-12" src="img/emailNumImage.png" title=""></p>
        </div>
    </div>
    <div class="go-top clearfix" onclick="scrollToAnchor('top');"><img src="img/gotoTopHandSTATIC.gif"
                               onmouseover="this.src='img/gotoTopHandANIM.gif'"
                               onmouseout="this.src='img/gotoTopHandSTATIC.gif'"
                               title="" style="margin: 0 auto;"></div>

@endsection
