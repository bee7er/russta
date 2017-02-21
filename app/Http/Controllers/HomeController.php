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

		$first = null;
		// Make sure we have a factor of twelve entries, cloning the first one if not
		$count = $resources->count();
		$useImage = 0;
		while (($count % 3) !== 0) {
			$use = clone($resources->get($useImage));
			$use['id'] = (9999 + $useImage);		// Dummy unique id
			$resources = $resources->merge([$use]);
			$count = $resources->count();
			$useImage++;
		}

		return view('pages.home', compact('resources'));
	}

}