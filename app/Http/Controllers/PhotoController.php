<?php namespace App\Http\Controllers;

use App\Photo;
use App\PhotoAlbum;

class PhotoController extends Controller {

    public function show()
	{
        $photos = Photo::all();

        return view('photo.view_album',compact('photos','photo_album'));
	}

}
