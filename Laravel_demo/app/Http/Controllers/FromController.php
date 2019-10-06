<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Http\Request;
use App\Product;

class FromController extends BaseController
{
	public function index()
	{
		echo "this is method index";
	}
	public function getId($id, $ten)
	{
		echo "id cua ban la ".$id." va ten ban la ".$ten;
	}
	public function showview()
	{
		$data['id'] = "1";
		$data['ten'] = "Linh";
		return view('Showview', $data);
	}
	public function showview1()
	{
		$data['id'] = "3";
		$data['ten'] = "Thu";
		return view('show', $data);
	}
	public function showlayout()
	{
		return view('extends_layout');
	}
	public function show_product($id)
	{
		$product = Product::find($id);
		return view('extends_layout', ['product'=>$product]);
	}
	public function showlist()
	{
		$products = Product::all();
		return view('product.showlist', array('products'=>$products));
	}
	public function create()
	{
		return view('product.insert');
	}
	// action Thêm mới sản phẩm
	public function store(Request $request)
	{
		if($request->isMethod('post') && $request->input('name')!="" && $request->input('price')!="" && $request->input('description')!="")
		{
			$product['name'] = $request->input('name');
			$product['price'] = $request->input('price');
			$product['description'] = $request->input('description');
			
			Product::create($product);
			echo "Thêm Thành công";
			return redirect('/listproduct');
		}else
		{
			echo "Thêm thất bại";
			return redirect()->back();
		}
	}
	public function update($id)
	{
		$product= Product::find($id);
		return view('product.update', ['product'=>$product]);
	}
	public function update_pro(Request $request, $id)
	{
		if($request->isMethod('post') && $request->input('name')!="" && $request->input('price')!="" && $request->input('description')!="")
		{
			$product= Product::find($id);
			$product['name'] = $request->input('name');
			$product['price'] = $request->input('price');
			$product['description'] = $request->input('description');
			$product->save();
				echo "Sửa Thành công";
			return redirect('/listproduct');
		}else
		{
			echo "Sửa thất bại";
			return redirect()->back();
		}
		
	}

	public function delete($id)
	{
		$product = Product::find($id);
		$product->delete();
		return redirect('/listproduct');
	}

}


?>