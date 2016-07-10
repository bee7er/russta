<?php
use App\Template;
use Illuminate\Database\Seeder;
use App\Resource;

class ResourceTableSeeder extends Seeder {

    public function run()
    {
        DB::table('resources')->delete();

        $defaultTemplate = Template::where('name', 'Default')->firstOrFail();
        $videoTemplate = Template::where('name', 'Video')->firstOrFail();

        $resource = new Resource();
        $resource->name = 'Chips & Waffles';
        $resource->filename = 'chipwaffle_still.png';
        $resource->url = 'https://player.vimeo.com/video/145770435';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'How chips and waffles come from a potato.<br /> <a href="https://vimeo.com/145770435">Chips &amp; Waffles</a> from <a
href="https://vimeo.com/russether">Russell Etheridge</a> on <a href="https://vimeo.com">Vimeo</a>.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Bathroom Boarder';
        $resource->filename = 'spidy.png';
        $resource->url = 'https://player.vimeo.com/video/137499366';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'A little arachnid themed short I managed to squeeze out during spare time.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Propz - Binoculars';
        $resource->filename = 'binoculars.jpg';
        $resource->url = 'https://player.vimeo.com/video/122770363';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'My feline-vision-aid contribution to the Propz series.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Blizzard Walk';
        $resource->filename = 'blizzard.jpg';
        $resource->type = 'gif';
        $resource->template_id = $videoTemplate->id;
        $resource->url = 'blizzard_loop.gif';
        $resource->description = 'A little animation test.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Weetabix - On the Go';
        $resource->filename = 'catchaleavingtrain.jpg';
        $resource->url = '';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'A series of quick morning cheats I designed and directed for Weetabix.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Propz - Shoelaces';
        $resource->filename = 'shoelaces.jpg';
        $resource->url = 'https://player.vimeo.com/video/119444475';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'My valentines-shoe contribution to the Propz series.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Showreel 2014';
        $resource->filename = 'showreel2014.png';
        $resource->url = 'https://player.vimeo.com/video/104406081';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'My feline-vision-aid contribution to the Propz series.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'The Lion';
        $resource->filename = 'thelion.jpg';
        $resource->url = 'https://player.vimeo.com/video/60453523';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'Award winning animated music video for US based band Escapist Papers.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Robbie Williams – Take the Crown';
        $resource->filename = 'robbiew.jpg';
        $resource->url = 'http://player.vimeo.com/video/69224915';
        $resource->type = 'video';
        $resource->template_id = $videoTemplate->id;
        $resource->description = 'Promo for Robbie Williams’ ‘Take the Crown’ album release.';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Blackberry – Those Who Do';
        $resource->filename = 'blackberry.jpg';
        $resource->url = 'blackberry.jpg';
        $resource->type = 'image';
        $resource->template_id = $defaultTemplate->id;
        $resource->description = 'Computer game style footballer…';
        $resource->save();

        $resource = new Resource();
        $resource->name = 'Merry Xmas!';
        $resource->filename = 'xmas_still_life.jpg';
        $resource->url = 'xmas_still_life.jpg';
        $resource->type = 'image';
        $resource->template_id = $defaultTemplate->id;
        $resource->description = 'An animated Xmas card, created with Cinema 4D and After Effects.';
        $resource->save();
    }

}
