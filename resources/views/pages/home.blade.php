@extends('layouts.app')
@section('title') Home :: @parent @endsection
@section('content')

    @include('partials.header')

    @if(count($photos)>0)
        <div class="row">
            @for ($i = 0; $i < count($photos); $i++)
                <div class="col-sm-3">
                    <div class="row" style="height:153px;text-align:left;border:0px solid red;">
                        <!-- NB Using the resource type to spcify the base part of the url -->
                        <a href="{{url($photos[$i]->type .'/'.$photos[$i]->id.'')}}"
                           style="margin:0;padding:0;">
                                <img class="col-sm-12" src="{!! url('img/thumbs/'.$photos[$i]->filename) !!}"
                                     style="margin:0;padding:0;width:100%;height:100%;border:0px solid red;"
                                    title="{!! $photos[$i]->name !!}">
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

