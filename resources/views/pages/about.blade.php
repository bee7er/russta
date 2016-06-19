@extends('layouts.app')
@section('title') About :: @parent @endsection
@section('content')

    @include('partials.header')

    <div class="row">
        <div style="margin:20px;">
            <h2>About Page</h2>
            <div>
                <p>Hello!</p>
                <p>I’m a London based director and animator with a wide range of animation skills, including character animation, motion graphics and visual effects.</p>
                <p>After receiving an MA in Animation from the Royal College of Art, I went on to work at some of London’s most prestigious animation and post production companies including MPC, The Mill and Nexus. I’ve have led numerous animation and motion graphics projects and been involved on many high end commercial and award winning campaigns.</p>
                <p>Most recently I have become part of the fantastic creative team at <a href="http://animade.tv">Animade.tv</a></p>
                <p>Let me know what you think of my work.  All feedback welcome.</p>
                <p style="text-align:center;">
                    <a href="/"><img alt="contact details" src="img/contact2.png" width="400" height="33"></a></p>
            </div>
        </div>
    </div>
@endsection