<?php namespace App\Http\Controllers;

use App\Photo;

class ImageController extends Controller {

    public function show($id)
	{
        $baseUrl = config('app.base_url');
        $image = Photo::find($id);

        return view('image.view_image',compact('baseUrl', 'image'));
	}

}
