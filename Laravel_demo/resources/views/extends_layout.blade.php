@extends('layout')
@section('title','Demo Layout Master')
@section('sidebar')
		@parent 
		<h1>Đây là phần main</h1>
@endsection
@section('header')
	<h1>Đây là phần header</h1>
@endsection
@section('content')
	<h2>Đây là phần content</h2>
	<h2>Xin chào các bạn </h2>
	<h3>Sản phẩm </h3>
	<h1>{!!$product->name!!} - "{!!$product->description!!}"</h1>
	<p><a href="{!!url('/update/'.$product->id)!!}" title="">Sửa</a></p>
	<p><a href="{!!url('/delete/'.$product->id)!!}" title="">Xóa </a></p>
@endsection
@section('footer')
	<h1>Đây là phần footer</h1>
@endsection

