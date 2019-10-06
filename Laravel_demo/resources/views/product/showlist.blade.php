@extends('layout')
@section('title','danh sach san pham')
@section('sidebar')
		@parent 
		<h1>Đây là phần main</h1>
@endsection
@section('header')
	<h1>Đây là phần header</h1>
@endsection
@section('content')
	@foreach($products as $product)
		<h2>
			<a href="{!!url('/showproduct/'.$product->id)!!}">{!!$product->name!!}</a>
		</h2>
		
	@endforeach
@endsection
@section('footer')
	<h1>Đây là phần footer</h1>
@endsection<h1>Danh sách các sản phẩm</h1>

