<h1>Sửa sản phẩm</h1>

<form action="{!!url('/update/'.$product->id)!!}" method="post">
	@csrf
	<table>
		<tr type="hidden">{!!$product->id!!}</tr>
		<tr>
			<td><label for=""> Tên sản phẩm</label></td>
			<td><input type="text" name = "name" value="{!!$product->name!!}"></td>
		</tr>
		<tr>
			<td><label for=""> Giá</label></td>
			<td><input type="text" name = "price" value="{!!$product->price!!}"></td>
		</tr>
		<tr>
			<td><label for="">Mô tả</label></td>
			<td><textarea name="description" id= "" cols = "30" rows="10">{!!$product->description!!}</textarea></td> 
		</tr>
		<tr>
			<td></td>
			<td colspan="2"><input type="submit" class="update" value="Sửa"></td>
		</tr>
	</table>
	

</form>