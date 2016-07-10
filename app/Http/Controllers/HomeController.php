<?php

namespace App\Http\Controllers;

use App\Resource;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{
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
			'resources.thumb',
			'resources.url',
			'resources.type'
			)
		)->limit(80)->get();

		return view('pages.home', compact('resources'));
	}

}