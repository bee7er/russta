@extends('layouts.app')
@section('title')
    {!! $video->name !!} :: @parent @endsection
@section('content')
    <h3 style="margin:0;padding:0;">{!! $video->name !!}</h3>

        {!! $video->rendered !!}

@endsection
