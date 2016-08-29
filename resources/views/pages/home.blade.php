@extends('layouts.app')
@section('title') Home :: @parent @endsection
@section('content')

    {{--@include('partials.header')--}}

    @if(count($resources)>0)
        <div class="row">
            @for ($i = 0; $i < count($resources); $i++)
                <div class="col-xs-6 col-sm-4 col-md-3">
                    <!-- NB Using the resource type to spcify the base part of the url -->
                    <a href="{{url($resources[$i]->type .'/'.$resources[$i]->id.'')}}">
                            <img class="" src="{!! url('/img/thumbs/'.$resources[$i]->thumb) !!}"
                                 style="margin:0;padding:0;width:100%;xxxxheight:152px;border:0px solid red;"
                                title="{!! $resources[$i]->name !!}">
                    </a>
                </div>
            @endfor
        </div>
    @endif

@endsection

