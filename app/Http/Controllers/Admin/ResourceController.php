<?php namespace App\Http\Controllers\Admin;

use App\Http\Controllers\AdminController;
use App\Resource;
use App\Language;
use App\Http\Requests\Admin\ResourceRequest;
use App\Http\Requests\Admin\DeleteRequest;
use App\Http\Requests\Admin\ReorderRequest;
use App\Template;
use App\Helpers\Thumbnail;
use Datatables;

class ResourceController extends AdminController
{
    /**
     * ResourceController constructor.
     */
    public function __construct()
    {
        view()->share('type', 'resource');
    }

    /**
     * Show a list of all the resource posts.
     *
     * @return View
     */
    public function index()
    {
        $resources = $this->getResources();

        // Show the page
        return view('admin.resource.index', compact('resources'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        $templates = Template::lists('name', 'id')->toArray();
        // Show the page
        return view('admin.resource.create_edit', compact('templates'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store(ResourceRequest $request)
    {
        $resource = new Resource($request->except('image'));

        $image = "";
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $image = sha1($filename . time()) . '.' . $extension;
        }
        $resource->filename = $image;
        $resource->save();

        if ($request->hasFile('image')) {
            $destinationPath = public_path() . '/appfiles/resource';
            $request->file('image')->move($destinationPath, $image);

        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Resource $resource
     * @return Response
     */
    public function edit(Resource $resource)
    {
        $templates = Template::lists('name', 'id')->toArray();

        return view('admin.resource.create_edit', compact('resource', 'templates'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  int $id
     * @return Response
     */
    public function update(ResourceRequest $request, Resource $resource)
    {
        $picture = $resource->filename;
        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension();
            $picture = sha1($filename . time()) . '.' . $extension;
        }
        $resource->filename = $picture;
        $resource->update($request->except('image'));

        if ($request->hasFile('image')) {
            $destinationPath = public_path() . '/appfiles/resource/';
            $request->file('image')->move($destinationPath, $picture);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return Response
     */

    public function delete(Resource $resource)
    {
        return view('admin.resource.delete', compact('resource'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param $id
     * @return Response
     */
    public function destroy(Resource $resource)
    {
        $resource->delete();
    }

    /**
     * Get all resources
     *
     * @return array
     */
    public function getResources()
    {
        return Resource::get()
            ->map(function ($resource) {
                return [
                    'id' => $resource->id,
                    'type' => $resource->type,
                    'name' => $resource->name,
                    'description' => $resource->description,
                    'template' => isset($resource->template) ? $resource->template->name : "Unknown",
                    'created_at' => $resource->created_at->format('d/m/Y'),
                ];
            });
    }

    /**
     * Show a list of all the languages posts formatted for Datatables.
     *
     * @return Datatables JSON
     */
    public function data()
    {
        $resources = $this->getResources();

        return Datatables::of($resources)
            ->add_column('actions', '<a href="{{{ url(\'admin/resource/\' . $id . \'/edit\' ) }}}" class="btn btn-success btn-sm iframe" ><span class="glyphicon glyphicon-pencil"></span>  {{ trans("admin/modal.edit") }}</a>
                <a href="{{{ url(\'admin/resource/\' . $id . \'/delete\' ) }}}" class="btn btn-sm btn-danger iframe"><span class="glyphicon glyphicon-trash"></span> {{ trans("admin/modal.delete") }}</a>
                <input type="hidden" name="row" value="{{$id}}" id="row">')
            ->remove_column('id')
            ->make();
    }
}
