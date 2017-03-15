<?php namespace App\Http\Controllers;

use App\Http\Helpers\TemplateHelper;
use App\Resource;

class VideoController extends Controller
{
    /**
     * @param $id
     * @return \BladeView|bool|\Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function show($name)
	{
        $error = null;
        $videoName = null;

        $video = Resource::with('template')->where("name", "=", $name)->first();
        if ($video) {
            $video->rendered = TemplateHelper::render($video);
            $videoName = $video->name;
        } else {
            $error = "Sorry, could not find that video";
            $videoName = "None";
        }

        return view('video.view_video',compact('video', 'error', 'videoName'));
	}
}
