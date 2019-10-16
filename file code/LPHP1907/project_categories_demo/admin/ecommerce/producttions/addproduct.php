<?php
echo "this is addnews.php";?>



<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    require_once "../../../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Add product</title>
</head>
<body>
<div class="container">

    <?php
    include_once ADMIN_ROOT_PATH."/components/top_header.php";
    ?>
    <div class="row">
        <h1>Đây là file addproduct.php</h1>
        <?php include_once ADMIN_ROOT_PATH."/components/negative.php"?>
        <div class="col-md-9">
            <form action="<?php echo ADMIN_ROOT_SITE ?>/ecommerce/producttions/listproducts.php" method="post">
                <table class="table">
                    <tr>
                        <th>Tên sản phẩm</th>
                        <td><input type="text" name="tensanpham"></td>
                    </tr>
                    <tr>
                        <th>Đường dẫn</th>
                        <td><input type="text" name="links"></td>
                    </tr>
                    <tr>
                        <th>Mô tả ngắn</th>
                        <td><input type="text" name="short_description""></td>
                    </tr>
                    <tr>
                        <th>Mô tả đầy đủ</th>
                        <td><input type="text" name="full_description"></td>
                    </tr>
                    <tr>
                        <th>Giá</th>
                        <td><input type="text" name="cost"></td>
                    </tr>
                    <tr>
                        <th>Sản phẩm cũ</th>
                        <td><input type="text" name="product_old"></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td>
                            <select name="published">
                                <option value="1">Publish</option>
                                <option value="0">UnPublish</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="btn btn-primary" name = "add-new">Add News</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>


</body>
</html>