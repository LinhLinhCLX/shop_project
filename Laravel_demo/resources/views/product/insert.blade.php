<h1>Thêm sản phẩm</h1>

<form action="{!!url('/insert')!!}" method="post">
	@csrf
	<table>
		<tr>
			<td><label for=""> Tên sản phẩm</label></td>
			<td><input type="text" name = "name"></td>
		</tr>
		<tr>
			<td><label for=""> Giá</label></td>
			<td><input type="text" name = "price"></td>
		</tr>
		<tr>
			<td><label for="">Mô tả</label></td>
			<td><textarea name="description" id= "" cols = "30" rows="10"></textarea></td> 
		</tr>
		<tr>
			<td></td>
			<td colspan="2"><input type="submit" class="submit" value="thêm"></td>
		</tr>
	</table>
	

</form>