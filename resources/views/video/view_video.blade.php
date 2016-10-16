@extends('layouts.app')
@section('title')
    {!! $video->name !!} :: @parent @endsection
@section('content')

        {!! $video->rendered !!}

@endsection
