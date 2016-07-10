<?php namespace App\Http\Controllers;

use App\Http\Helpers\TemplateHelper;
use App\Resource;

class VideoController extends Controller
{
    /**
     * @param $id
     * @return \BladeView|bool|\Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($id)
	{
        $video = Resource::with('template')->find($id);

        $video->rendered = TemplateHelper::render($video);

        return view('video.view_video',compact('video'));
	}

}
