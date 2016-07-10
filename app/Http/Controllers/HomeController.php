<?php

namespace App\Http\Controllers;

use App\Resource;
use DB;

class HomeController extends Controller {

	/**
	 * Show the application dashboard to the user.
	 *
	 * @return Response
	 */
	public function index()
	{
		$resources = Resource::select(
			array(
			'resources.id',
			'resources.name',
			'resources.description',
			'resources.filename',
			'resources.url',
			'resources.type'
			)
		)->limit(80)->get();

		return view('pages.home', compact('resources'));
	}

	/**
	 * Show the application dashboard to the user.
	 * ////////////////////////
	 *
	 * @return Response
	 */
	public function indexBak()
	{
		$articles = Article::with('author')->orderBy('position', 'DESC')->orderBy('created_at', 'DESC')->limit(4)->get();

		$resourceAlbums = PhotoAlbum::select(array(
			'resource_albums.id',
			'resource_albums.name',
			'resource_albums.description',
			'resource_albums.folder_id',
			DB::raw('(select filename from resources WHERE album_cover=1 AND deleted_at IS NULL and resources.resource_album_id=resource_albums.id LIMIT 1) AS album_image'),
			DB::raw('(select filename from resources WHERE resources.resource_album_id=resource_albums.id AND deleted_at IS NULL ORDER BY position ASC, id ASC LIMIT 1) AS album_image_first')
		))->limit(8)->get();

		return view('pages.home', compact('articles', 'resourceAlbums'));
	}

}