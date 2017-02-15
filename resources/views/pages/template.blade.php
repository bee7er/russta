@extends('layouts.app')
@section('title') template :: @parent @endsection

@section('content')

    <div class="template-title">bathroom boarder</div>
    <div id="video-panel" class="row template-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <iframe id="video-frame" style="border:10px solid black;background-color: #000;padding:0;margin:0 auto 0
            auto;width: 100%;height:350px;" src="https://player.vimeo.com/video/137499366" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div>
    </div>
    <div class="go-top clearfix" onclick="scrollToAnchor('top');">#top</div>

@endsection
