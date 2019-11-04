@extends('layout.master-layout')

@section('title','Dịch vụ')
@section('content_share')
<meta property="og:image" content="{{ route('home') }}/assets/img_service/{{ $services->image }}" />
<meta property="og:type" content="website" />
<meta property="og:url" content="{{ route('get.list.service',$services->slug) }}" />
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="627">
<meta property="og:title" content="{{$services->title}}" />
<meta property="og:description"   content="{{ $services->description }}" />

<meta name ="shareaholic:image" content="{{ route('home') }}/assets/img_service/{{ $services->image }}" />
<meta name="shareaholic:type" content="website" />
<meta name="shareaholic:url" content="{{ route('get.list.service',$services->slug) }}" />
<meta name="shareaholic:image:width" content="1200">
<meta name="shareaholic:image:height" content="627">
<meta name="shareaholic:title" content="{{$services->title}}" />
<meta name="shareaholic:description"   content="{{ $services->description }}" />
@endsection
@section('content')

<div class="content">

    <div class="content__top">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v4.0&appId=905994716401230&autoLogAppEvents=1"></script><div class="fb-like" data-href="https://www.facebook.com/Web88Pro/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
    <div class="fb-like" data-href="https://www.facebook.com/Web88Pro/" data-width="" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>

        <div class="content__top-img" style=" background-image:url({{ asset('assets/img_service/'.$services->image) }})">

            <div class="col-12 col-md-12 content-block">
                
                <h3 class="content__top-title wow bounceInLeft">

                    {!! $services->title !!}

                </h3>

                <p class="content__top-desc wow bounceInRight">

                    <!-- Dịch vụ web hosting uy tín, ổn định -->

                </p>

                <div class="input-group form__search">

                    <p class="ghichu">{!! $services->description !!}</p>

                </div>

            </div>

        </div>

    </div>

    <!--  -->

    <div class="content-main">

        <div class="container" style="margin-bottom: 30px;">
            <div class="share_links"  style="height: auto;margin: 30px 0px 0px;">
                @include('layout.shareaholid_link')
            </div>
            <div class="time">
                
                <span><i class="far fa-calendar-alt"></i>{{ $services->created_at }}</span>
                <div class="fb-like" data-href="http://localhost:81/Haizzzzzzz/hostingchatluongcao.html" data-width="" data-layout="button" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

            </div>

            <div class="index">

                {!! $services->summary !!}

            </div>

            {!! $services->content !!}
            <!-- dong 280 o frontendController -->
            <div class="tags-service" style="margin-top: 20px;">
                <span class="tags" ><strong><i class="fa fa-tags" aria-hidden="true"></i>Tags: </strong></span>
                @foreach($TagService as $item)
                <a href="{{route('tags.keyword', ['keywordtags' => $item->name])}}"><span class="tags" name="keywordtags" style="color: #ffffff ;     background-color: #5cb85c; padding: 5px; border-style: 1px solid  #5cb85c; border-radius: 8px; font-size: 13px; text-decoration: none !important;">{{$item->name}}</span></a>
                
                @endforeach
            </div>


        </div>
        

    </div>
    
    <div class="slide-content-bottom">

        <div class="container">

            <p class="slide-bottom-title">DỊCH VỤ LIÊN QUAN</p>

            <div class="service__silder">

                @if(isset($sliders))

                    @foreach($sliders as $slider)

                        <img style="width:218px;height:138px" src="{{ asset('assets/slider-dichvu/'.$slider->image )}}" alt="">

                    @endforeach

                @endif

            </div>

        </div>

    </div>
    <!-- <div id="fb-root"></div>
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
        data-href="{{ route('get.list.service',$services->slug) }}" 
        data-layout="button_count">
      </div> -->

@endsection