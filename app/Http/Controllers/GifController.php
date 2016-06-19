<?php namespace App\Http\Controllers;

use App\Photo;

class GifController extends Controller {

    public function show($id)
	{
        $baseUrl = config('app.base_url');
        $gif = Photo::find($id);

        return view('gif.view_gif',compact('baseUrl', 'gif'));
	}

}
