@extends('layouts.app')
@section('title') Home :: @parent @endsection

@section('content')

    <div id="home">&nbsp;</div>
    @if(count($resources)>0)
        <div class="row-container">
            <div class="row" style="width:100%;">
                @for ($i = 0; $i < count($resources); $i++)
                        <!-- NB Using the resource type to specify the base part of the url -->
                        <a href="{{url($resources[$i]->type .'/'.$resources[$i]->id.'')}}">
                                <img class="work-image col-xs-12 col-sm-6 col-md-6 col-lg-4"
                                     src="{!! url('/img/thumbs/'.$resources[$i]->thumb) !!}"
                                    title="{!! $resources[$i]->name !!}">
                        </a>
                @endfor
            </div>
        </div>
    @endif

    <div id="about" class="panel-title">about</div>
    <div class="row about-row-container">
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 about-left">
            <img alt="squaresquare" src="img/fish.png" class="about-left-img">
        </div>
        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 about-right">
            <p>Hello!</p>
            <p>I’m a Brighton based director, designer and animator with a wide range of animation skills, including 2D and 3D character animation motion graphics.</p>
            <p>Most recently I have moved to the sunny and creative mixing pot that is Brighton and I am now in the process of setting up my own independent animatin studio!</p>
            <p>If you'd like to get in touch about a project I can help with or just a friendly chat, I'd love to hear from you!</p>
            <p class="center-text">contact@ruselletheridge.com</p>
            <p class="center-text">+44(0)7790 330 102</p>
        </div>
    </div>
    <div class="clearfix"></div>

    <div id="contact" class="panel-title">contact</div>
    <div class="row contact-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <p>Have a project in mind, or just want to say hi?</p>
            <p>I’d love to hear from you!.</p>
            <p class="center-wrap-text">russ@squaresquare.com</p>
            <p class="center-text">+44(0)7790 330 102</p>
            <p class="center-text">Follow me!</p>
            <p class="center-text">
                <a target="_blank" href="#">
                    <i class="social-icon fa fa-youtube" title="Share on YouTube"></i>
                </a>
                <a target="_blank" href="#">
                    <i class="social-icon fa fa-facebook" title="Share on Facebook"></i>
                </a>
                <a target="_blank" href="#">
                    <i class="social-icon fa fa-twitter" title="Share on Twitter"></i>
                </a>
                <a target="_blank" href="#">
                    <i class="social-icon fa fa-google-plus" title="Share on Google+"></i>
                </a>
            </p>
        </div>
    </div>
    <div class="clearfix"></div>

    <div id="merch" class="panel-title">merch</div>
    <div class="row merch-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <p>Check out my range of merchandising.</p>
            <p>Interesting and fun at affordable prices.</p>
            <p class="center-wrap-text">russ@squaresquare.com</p>
            <p class="center-text">+44(0)7790 330 102</p>
            <p class="center-text">Buy me!</p>
        </div>
    </div>
    <div class="clearfix"></div>

    <h2 id="fish-tank" class="panel-title">fish tank</h2>
    <div class="row fish-tank-row-container">
            <img src="{{config('app.base_url')}}img/fishtank_placeholder.png" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" />
    </div>
    <div class="clearfix"></div>

@endsection
