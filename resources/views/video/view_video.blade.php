@extends('layouts.app')
@section('title')
    {!! $video->name !!} :: @parent @endsection
@section('content')
    <h3>{!! $video->name !!}</h3>
    <div style="width: inherit;text-align: center;">
        {!! $video->rendered !!}
    </div>
@endsection
@section('scripts')
    <script>
        // Nothing to do here
    </script>
@endsection
