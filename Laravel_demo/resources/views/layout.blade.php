<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>@yield('title')</title>
	<link rel="stylesheet" href="">
	<style type="text/css" media="screen">
		header, footer{
			background-color: lightblue;
		}
	</style>
</head>
<body>
	<header id="header" class="">
		<h1>@yield('header')</h1>
	</header><!-- /header -->
	<main>
		@section('sidebar')
			Đây là sidebar
		@show
		<div class="container">
			@yield('content')
		</div>
	</main>
	<footer>
		<h1>@yield('footer')</h1>
	</footer>
</body>
</html>