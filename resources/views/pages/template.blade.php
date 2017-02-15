@extends('layouts.app')
@section('title') template :: @parent @endsection

@section('content')

    <body style="background-color: magenta;" />

    <div class="template-title">bathroom boarder</div>
    <div id="video-panel" class="row template-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <iframe id="video-frame" style="border:10px solid black;background-color: #000;padding:0;margin:0 auto 0
            auto;width: 100%;height:350px;" src="https://player.vimeo.com/video/137499366" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
        </div>
    </div>

    <div class="row template-row-container template-sub-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fermentum nulla ac magna semper scelerisque. Pellentesque fermentum elit et felis laoreet, non vulputate purus laoreet. Mauris blandit felis rhoncus neque tempor, a lobortis justo dapibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed at orci quam. Sed sit amet metus scelerisque, maximus massa ac, commodo massa. Praesent ac rutrum sapien. Proin rutrum sodales placerat. Pellentesque ligula urna, gravida vel suscipit vitae, volutpat ac nibh. Ut gravida vehicula felis et maximus. Aliquam condimentum consectetur turpis, ac fringilla felis dapibus vitae.
        </div>
    </div>

    <div class="row template-row-container template-sub-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 template-text">
            <img src="img/pegs.png" width="100%" />
        </div>
    </div>

    <div class="template-credits-title">credits</div>
    <div class="row template-credits-row-container">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <div class="template-credits-label">Director</div>
            <div class="template-credits-text">Russ Etheridge</div>
            <div class="template-credits-label">Produced</div>
            <div class="template-credits-text">Animade</div>
            <div class="template-credits-label">Sound</div>
            <div class="template-credits-text">Mutant Jukebox</div>
        </div>
    </div>

@endsection
