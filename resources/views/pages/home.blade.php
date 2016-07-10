@extends('layouts.app')
@section('title') Home :: @parent @endsection
@section('content')

    {{--@include('partials.header')--}}

    @if(count($resources)>0)
        <div class="row">
            @for ($i = 0; $i < count($resources); $i++)
                <div class="col-sm-3">
                    <div class="row" style="height:153px;text-align:left;border:0px solid red;">
                        <!-- NB Using the resource type to spcify the base part of the url -->
                        <a href="{{url($resources[$i]->type .'/'.$resources[$i]->id.'')}}">
                                <img class="col-sm-12" src="{!! url('/appfiles/resource/'.$resources[$i]->thumb) !!}"
                                     style="margin:0;padding:0;width:100%;height:100%;border:0px solid red;"
                                    title="{!! $resources[$i]->name !!}">
                        </a>
                    </div>
                </div>

                @if((($i + 1) % 4) <= 0)
                    <div class="clearfix"></div>
                @endif

            @endfor
        </div>
    @endif

@endsection

