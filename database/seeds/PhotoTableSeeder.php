<?php
use Illuminate\Database\Seeder;
use App\Photo;

class PhotoTableSeeder extends Seeder {

    public function run()
    {
        DB::table('photos')->delete();

        $photo = new Photo();
        $photo->name = 'Chips & Waffles';
        $photo->filename = 'chipwaffle_still.png';
        $photo->url = 'https://player.vimeo.com/video/145770435';
        $photo->type = 'video';
        $photo->description = 'How chips and waffles come from a potato.<br /> <a href="https://vimeo.com/145770435">Chips &amp; Waffles</a> from <a
href="https://vimeo.com/russether">Russell Etheridge</a> on <a href="https://vimeo.com">Vimeo</a>.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Bathroom Boarder';
        $photo->filename = 'spidy.png';
        $photo->url = 'https://player.vimeo.com/video/137499366';
        $photo->type = 'video';
        $photo->description = 'A little arachnid themed short I managed to squeeze out during spare time.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Propz - Binoculars';
        $photo->filename = 'binoculars.jpg';
        $photo->url = 'https://player.vimeo.com/video/122770363';
        $photo->type = 'video';
        $photo->description = 'My feline-vision-aid contribution to the Propz series.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Blizzard Walk';
        $photo->filename = 'blizzard.jpg';
        $photo->type = 'gif';
        $photo->url = 'blizzard_loop.gif';
        $photo->description = 'A little animation test.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Weetabix - On the Go';
        $photo->filename = 'catchaleavingtrain.jpg';
        $photo->url = '';
        $photo->type = 'video';
        $photo->description = 'A series of quick morning cheats I designed and directed for Weetabix.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Propz - Shoelaces';
        $photo->filename = 'shoelaces.jpg';
        $photo->url = 'https://player.vimeo.com/video/119444475';
        $photo->type = 'video';
        $photo->description = 'My valentines-shoe contribution to the Propz series.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Showreel 2014';
        $photo->filename = 'showreel2014.png';
        $photo->url = 'https://player.vimeo.com/video/104406081';
        $photo->description = 'My feline-vision-aid contribution to the Propz series.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'The Lion';
        $photo->filename = 'thelion.jpg';
        $photo->url = 'https://player.vimeo.com/video/60453523';
        $photo->type = 'video';
        $photo->description = 'Award winning animated music video for US based band Escapist Papers.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Robbie Williams – Take the Crown';
        $photo->filename = 'robbiew.jpg';
        $photo->url = 'http://player.vimeo.com/video/69224915';
        $photo->type = 'video';
        $photo->description = 'Promo for Robbie Williams’ ‘Take the Crown’ album release.';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Blackberry – Those Who Do';
        $photo->filename = 'blackberry.jpg';
        $photo->url = 'blackberry.jpg';
        $photo->type = 'image';
        $photo->description = 'Computer game style footballer…';
        $photo->language_id = 1;
        $photo->save();

        $photo = new Photo();
        $photo->name = 'Merry Xmas!';
        $photo->filename = 'xmas_still_life.jpg';
        $photo->url = 'xmas_still_life.jpg';
        $photo->type = 'image';
        $photo->description = 'An animated Xmas card, created with Cinema 4D and After Effects.';
        $photo->language_id = 1;
        $photo->save();
    }

}
