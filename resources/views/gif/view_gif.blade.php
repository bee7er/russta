@extends('layouts.app')
@section('title')
    {!! $gif->name !!} :: @parent @endsection
@section('content')
    <h3>{!! $gif->name !!}</h3>
    <div style="width: inherit;text-align: center;">
        <div style="width: 480px; padding:0;margin:0;border:0px solid blue;text-align: center;">

            <img style="border:1px solid #d2d2d2;" src="../img/gifs/{!! $gif->url !!}" width="480"
                 height="480" frameborder="0">
            <p style="border:0px solid red;">{!! $gif->description !!}</p>
            <p style="text-align: center;"><a href="{{$baseUrl}}"><img src="../img/back.png" alt="Go back" title="Go back"
                                                            width="38px"></a></p>
        </div>
    </div>
@endsection
@section('scripts')
    <script>
        // Nothing to do here
    </script>
@endsection
