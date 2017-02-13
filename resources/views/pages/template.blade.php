@extends('layouts.app')
@section('title') template :: @parent @endsection

@section('content')

    <div class="panel-title">Bathroom Boarder</div>
    <div class="row">
        <table style="border: 0px solid red;margin: 0 auto 0 auto;padding: 0;width: 480px;">
            <tbody>
            <tr>
                <td>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="border:10px solid black;padding:25px;
                    background-color:#fff;width: 480px;">
                        <iframe style="border:10px solid black;padding:25px;margin:0 auto 0 auto;background-color:#fff;width: 100%;" src="https://player.vimeo.com/video/137499366" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div>
                </td>
            </tr>

            <tr><td style="margin: 5px;">&nbsp;</td></tr>

            <tr>
                <td>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="border:10px solid black;padding:25px;background-color:#fff;width: 480px;">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque fermentum nulla ac magna semper scelerisque. Pellentesque fermentum elit et felis laoreet, non vulputate purus laoreet. Mauris blandit felis rhoncus neque tempor, a lobortis justo dapibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed at orci quam. Sed sit amet metus scelerisque, maximus massa ac, commodo massa. Praesent ac rutrum sapien. Proin rutrum sodales placerat. Pellentesque ligula urna, gravida vel suscipit vitae, volutpat ac nibh. Ut gravida vehicula felis et maximus. Aliquam condimentum consectetur turpis, ac fringilla felis dapibus vitae.
                    </div>
                </td>
            </tr>

            <tr><td style="margin: 5px;">&nbsp;</td></tr>

            <tr>
                <td>
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="border:10px solid black;padding:25px;background-color:#fff;width: 480px;">
                        <img src="img/vids.png" width="100%" />
                    </div>
                </td>
            </tr>

            <tr><td style="margin: 5px;">&nbsp;</td></tr>

            <tr>
                <td>
                    <div id="about" class="panel-title">credits</div>
                    <div style="border:10px solid black;padding:25px;
                    background-color:#fff;width: 200px;margin: 0 auto 0 auto;">
                        Me, on my own
                    </div>
                </td>
            </tr>

            <tr><td style="margin: 5px;">&nbsp;</td></tr>

            </tbody>
        </table>
    </div>
    <div class="clearfix"></div>

@endsection
