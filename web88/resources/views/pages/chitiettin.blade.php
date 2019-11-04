@extends('layout.master-layout')
@section('title')
    {{$listNews->name}}
@endsection

@section('content_share')
<meta property="og:image" content="{{ route('home') }}/assets/img_blogs/{{ $listNews->image }}" />
<meta property="og:type" content="website" />
<meta property="og:url" content="{{ route('get.list.news',$listNews->slug) }}" />
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="627">
<meta property="og:title" content="{{$listNews->name}}" />
<meta property="og:description"   content="{{ $listNews->name }}" />

<meta name ="shareaholic:image" content="{{ route('home') }}/assets/img_blogs/{{ $listNews->image }}" />
<meta name="shareaholic:type" content="website" />
<meta name="shareaholic:url" content="{{ route('get.list.news',$listNews->slug) }}" />
<meta name="shareaholic:image:width" content="1200">
<meta name="shareaholic:image:height" content="627">
<meta name="shareaholic:title" content="{{$listNews->name}}" />
<meta name="shareaholic:description"   content="{{ $listNews->name }}" />
@endsection
@section('content')

    <div class="content">

        <div class="container mt-1">
            

            <div class="row" style="margin-top: 80px;">

                <div class="col-md-8">
                    <h2 style="font-size: 158%;color: #32b9d8">         
                        {{$listNews->name}}
                    </h2>

                    <div class="mt-1">
                        <h3>
                            <i class="fa fa-calendar" aria-hidden="true"></i> {{$listNews->created_at}}
                        </h3>
                            
                        <!-- <div class="media p-12"> -->
                        <img src="{{ asset('assets/img_blogs/'.$listNews->image) }}" class="mr-4 mt-2" width="560" height="400">
                        @if($listNews)

                            {!! $listNews->detail !!}

                        @endif

                    </div>
                    <div class="tags-service" style="margin-top: 20px;">
                <span class="tags" ><strong><i class="fa fa-tags" aria-hidden="true"></i>Tags: </strong></span>
                <!-- foreach($TagService as $item) -->
                <a href="#">
                    <!-- href= route('tags.keyword', ['keywordtags' => $item->name]) -->
                    <!-- <span class="tags" name="keywordtags" style="color: #ffffff ;     background-color: #5cb85c; padding: 5px; border-style: 1px solid  #5cb85c; border-radius: 8px; font-size: 13px; text-decoration: none !important;">-->
                        <!-- item->name -->
                    <!-- </span> --> 
                </a>
                
                <!-- endforeach -->

                <div class="share_links"  style="height: auto;margin: 30px 0px 0px;">
                    @include('layout.shareaholid_link')
                </div>
            </div>

                </div>



                <div class="col-md-4">

                    <table border="1" style="border:1px solid black !important" class="text-left" cellpadding="9"

                           cellspacing="10">

                        <tr style="background: #06557c">

                            <td style="color: #fff;padding: 10px">

                                <h3 style="color: white;">

                                    <i class="fa-list-ul fa" style="margin-right: 10px"> </i> <span>Xem nhiều</span>

                                </h3>

                            </td>

                        </tr>

                        @if($newsHots)

                            @foreach($newsHots as $newsHot)

                                <tr>

                                    <td class="td-tintuc"><a href="{{ Route('get.list.news',[$newsHot->slug]) }}">{{ $newsHot->name }}</a></td>

                                </tr>

                            @endforeach

                        @endif

                    </table>
    
                    <a href="javascript:void(0)" title=""><img class="img-1" style="width: 100%;" src="http://thietkewebnhanh247.com/wp-content/themes/thietkewebsite/img/thiet-ke-website.jpg" alt="Thiết kế web giá rẻ"></a>

                </div>

            </div> 
            <div id="fb-root"></div>
            <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v4.0&appId=905994716401230&autoLogAppEvents=1"></script><div class="fb-like" data-href="https://www.facebook.com/Web88Pro/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div><br>

        </div>

    </div>

    <!--  -->



    <center>

        <ul class="pagination justify-content-center">

            <li class="page-item active"><a class="page-link" href="javascript:void(0);">1</a></li>

            <li class="page-item"><a class="page-link" href="page2.html">2</a></li>

            <li class="page-item"><a class="page-link" href="page3.html">3</a></li>

            <li class="page-item"><a class="page-link" href="page4.html">4</a></li>

            <li class="page-item"><a class="page-link" href="page5.html">5</a></li>

        </ul>

    </center>

   <!--  <div id="fb-root"></div>
    <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0";
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>-->
    <!-- Your share button code -->
    <!--  <div class="fb-share-button" 
        data-href="{{ route('get.list.news',$listNews->slug) }}" 
        data-layout="button_count">
      </div> -->
@endsection