@extends('layouts.app')
@section('title') Home :: @parent @endsection
@section('content')

    {{--@include('partials.header')--}}

    @if(count($resources)>0)
        <div style="border:20px solid black;padding: 25px;margin:30px;background-color:#fff">
        <div class="row" style="width:100%; border:0px solid red;">
            @for ($i = 0; $i < count($resources); $i++)
                    <!-- NB Using the resource type to specify the base part of the url -->
                    <a href="{{url($resources[$i]->type .'/'.$resources[$i]->id.'')}}">
                            <img class="col-xs-12 col-sm-6 col-md-6 col-lg-4" style="border:25px solid #fff;
                            margin:0;
                            padding:0;"
                                 src="{!! url('/img/thumbs/'.$resources[$i]->thumb) !!}"
                                title="{!! $resources[$i]->name !!}">
                    </a>
            @endfor
        </div>
        </div>
    @endif

@endsection


<!--
            <img class=""
                 style="margin:0;padding:0;width:100%;border:5px solid black;"
-->
