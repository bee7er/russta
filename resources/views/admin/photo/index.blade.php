@extends('admin.layouts.default')

{{-- Web site Title --}}
@section('title') {!! trans("admin/photo.photo") !!}
:: @parent @endsection

{{-- Content --}}
@section('main')
    <div class="page-header">
        <h3>
            {!! trans("admin/photo.photo") !!}
            <div class="pull-right">
                <div class="pull-right">
                    <a href="{!! url('admin/photo/create') !!}"
                       class="btn btn-sm  btn-primary iframe"><span
                                class="glyphicon glyphicon-plus-sign"></span> {{ trans("admin/modal.new") }}</a>
                </div>
            </div>
        </h3>
    </div>

    <table id="table" class="table table-striped table-hover">
        <thead>
        <tr>
            <th>{!! trans("admin/modal.title") !!}</th>
            <th>{!! trans("admin/photo.album") !!}</th>
            <th>{!! trans("admin/photo.album_cover") !!}</th>
            <th>{!! trans("admin/photo.slider") !!}</th>
            <th>{!! trans("admin/admin.language") !!}</th>
            <th>{!! trans("admin/admin.created_at") !!}</th>
            <th>{!! trans("admin/admin.action") !!}</th>
        </tr>
        </thead>
        <tbody>
        @if(count($photos)>0)
            <div class="row">
                <h2>Videos</h2>
                @foreach ($photos as $post)
                    <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-8">
                                <h4>
                                    <strong>{{ $post->name }}</strong>
                                </h4>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif

        </tbody>
    </table>
@endsection

{{-- Scripts --}}
@section('scripts')
@endsection
