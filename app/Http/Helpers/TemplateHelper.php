<?php

namespace App\Http\Helpers;

use App\Resource;

class TemplateHelper
{
	public static $environment_vars = [
        'BASE_URL' => ['baseUrl' => 'The base url of the application'],
	];
	public static $resource_attrs = [
        'NAME' => ['name' => 'The name of the resource'],
        'FILENAME' => ['filename' => 'The file name of the image or animated GIF'],
        'URL' => ['url' => 'The location of the video'],
        'TYPE' => ['type' => 'The type of the resource'],
        'TEMPLATE_ID' => ['template_id' => 'The id of the template being used for the resource'],
        'DESCRIPTION' => ['description' => 'The description of the resource'],
	];

	/**
	 * Get the validation rules that apply to the request.
	 *
	 * @return array
	 */
	public static function render(Resource $resource)
	{
		if ($resource->template) {
			if ($resource->template->container) {
				// Gather all potential environment variables we are supporting
				$baseUrl = config('app.base_url');
				// Now substitute in the container
				foreach (self::$environment_vars as $environment_var => $var) {
					$key = key($var);
					$resource->template->container =
						str_ireplace("#$environment_var#", $$key, $resource->template->container);
				}
				// Now substitute resource attributes in the container
				foreach (self::$resource_attrs as $resource_attr => $attr) {
					$key = key($attr);
					$resource->template->container =
						str_ireplace("#$resource_attr#", $resource->$key, $resource->template->container);
				}
				return $resource->template->container;
			}
		}
		return '';
	}
}
