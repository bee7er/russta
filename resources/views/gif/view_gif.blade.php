@extends('layouts.app')
@section('title')
    {!! $gif->name !!} :: @parent @endsection
@section('content')
    <h3>{!! $gif->name !!}</h3>
    <div style="width: inherit;text-align: center;">
        {!! $gif->rendered !!}
    </div>
@endsection
@section('scripts')
    <script>
        // Nothing to do here
    </script>
@endsection