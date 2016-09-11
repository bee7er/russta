<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>@section('title') Laravel 5 Sample Site @show</title>
    @section('meta_keywords')
        <meta name="keywords" content="your, awesome, keywords, here"/>
    @show @section('meta_author')
        <meta name="author" content="Jon Doe"/>
    @show @section('meta_description')
        <meta name="description"
              content="Lorem ipsum dolor sit amet, nihil fabulas et sea, nam posse menandri scripserit no, mei."/>
    @show

		<link href="{{ asset('css/site.css') }}" rel="stylesheet">
        <script src="{{ asset('js/site.js') }}"></script>

    @yield('styles')
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <link rel="shortcut icon" href="{!! asset('assets/site/ico/favicon.ico')  !!} ">
</head>
<body>
<!-- Wrapper class and push div block below added to get footer to go to the bottom of the page -->
<div class="wrapper">
    @include('partials.nav')

    <div class="container-fluid">
        @yield('content')
    </div>
    <div class="push"></div>
</div>

@include('partials.footer')

<span id="navbar-top" style="position:absolute;top:0px;left:0px;text-align:center;width:100%;height:40px;
vertical-align:top;">
    <a href="/russ/public"><img id="logo-anim" alt="russell etheridge dot com"
                                src="{{config('app.base_url')}}img/logo-anim.png"></a>
</span>
<span style="position:absolute;top:0px;left:0px;">
    <img id="hamburger" alt="hamburger menu" src="{{config('app.base_url')}}img/hamburger.gif" width="40px"
         height="40px">
</span>

<!-- Scripts -->
@yield('scripts')

</body>
</html>
