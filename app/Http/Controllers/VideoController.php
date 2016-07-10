<?php namespace App\Http\Controllers;

use App\Http\Helpers\TemplateHelper;
use App\Resource;

class VideoController extends Controller {

    public function show($id)
	{
        $baseUrl = config('app.base_url');
        $video = Resource::with('template')->find($id);

        $video->rendered = TemplateHelper::render($video);

        return view('video.view_video',compact('baseUrl', 'video'));
	}

}
