<?php
use Illuminate\Database\Seeder;
use App\Template;

class TemplateTableSeeder extends Seeder {

    public function run()
    {
        DB::table('templates')->delete();

        $template = new Template();
        $template->name = 'Default';
        $template->container = '';
        $template->save();

        $template = new Template();
        $template->name = 'Video';
        $template->container = '
<div style="width: 480px;padding:0;margin:0;border:0px solid blue;text-align: center;">
<video preload="" src="blob:#URL#"></video>
<iframe style="border:1px solid #d2d2d2;" src="#URL#" width="480" height="480"
frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<p style="border:0px solid red;">#DESCRIPTION#</p>
<p style="text-align: center;">
<a href="#BASE_URL#"><img src="../img/back.png" alt="Go back" title="Go back" width="38px"></a>
</p>
</div>
        ';
        $template->save();
    }
}
