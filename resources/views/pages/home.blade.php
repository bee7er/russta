@extends('layouts.app')
@section('title') Home :: @parent @endsection

@section('content')

    @if(count($resources)>0)
        <div style="border:10px solid black;padding:25px;margin:20px auto 0 auto;background-color:#fff;width:80%;
        text-align:center;">
            <div class="row" style="width:100%; border:0px solid red;">
                @for ($i = 0; $i < count($resources); $i++)
                        <!-- NB Using the resource type to specify the base part of the url -->
                        <a href="{{url($resources[$i]->type .'/'.$resources[$i]->id.'')}}">
                                <img class="col-xs-12 col-sm-6 col-md-6 col-lg-4" style="border:10px solid #fff;
                                margin:0;background-color:#000;
                                padding:10px;"
                                     src="{!! url('/img/thumbs/'.$resources[$i]->thumb) !!}"
                                    title="{!! $resources[$i]->name !!}">
                        </a>
                @endfor
            </div>
        </div>
    @endif

@endsection
