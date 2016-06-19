<?php namespace App\Http\Controllers;

use App\Photo;

class VideoController extends Controller {

    public function show($id)
	{
        $baseUrl = config('app.base_url');
        $video = Photo::find($id);

        return view('video.view_video',compact('baseUrl', 'video'));
	}

}
