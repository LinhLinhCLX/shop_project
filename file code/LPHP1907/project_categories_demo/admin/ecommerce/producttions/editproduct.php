
<!DOCTYPE html>
<html>
<head>
    <?php
    require_once "../../../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Edit Products</title>

</head>
<body>
<?php

if(!App::check_login())
{
    header("location:login.php");
}
if (isset($_POST['logout']))
{
//        session_destroy();
    unset($_SESSION['user']);
    header('location: login.php');
}


$link_product = 'ecommerce/producttions/editproduct.php';
$product_id = $_GET['product_id'];

$query = "SELECT * FROM products WHERE id = '$product_id'";
$kq=mysqli_query($connection,$query);
$product = $kq->fetch_assoc();//trả về một mảng

if(isset($_POST['save']) || isset($_POST['save_close']))
{
//    tensanpham' links short_description full_description' cost published published
    $tensanpham = $_POST['tensanpham'];
    $links = $_POST['links'];
    $short_description = $_POST['short_description'];
    $full_description = $_POST['full_description'];
    $cost = $_POST['cost'];
    $product_old = $_POST['product_old'];
    $published = $_POST['published'];
    $query = "UPDATE `products` SET `tensanpham` = '$tensanpham',
                    `links` = '$links', 
                    `short_description` = '$short_description', 
                    `full_description` = '$full_description', 
                    `cost` = '$cost', 
                    `product_old` = '$product_old' 
                    WHERE `products`.`id` = $product_id;";
    $data = mysqli_query($connection, $query);
    if(isset($_POST['save_close']))
    {
        header("location:".ADMIN_ROOT_SITE."/ecommerce/producttions/listproducts.php");

    }
}



?>

<div class="container">
    <?php
    include_once ADMIN_ROOT_PATH."/components/top_header.php";
    ?>
    <form action="index.php" method="post">
        <h2>Đây là file editproduct.php trong thư mục admin</h2>
        <input type="submit" value="Đăng xuất" name="logout">
    </form>
    <div class="row">
        <?php
        include_once ADMIN_ROOT_PATH."/components/negative.php";
        ?>

        <div class="col-md-9">
            <h2>Sửa Product</h2>
            <form action="<?php echo ADMIN_ROOT_SITE.$link_product;?>?product_id=<?php echo $product_id; ?>" method="post">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <td><?php echo $product_id; ?></td>
                    </tr>

                    <tr>
                        <th>Tên sản phẩm</th>
                        <td><input type="text" name="tensanpham" value="<?php echo $product['tensanpham']; ?>"></td>
                    </tr>
                    <tr>
                        <th>Đường dẫn</th>
                        <td><input type="text" name="links" value="<?php echo $product['links'];?>"></td>
                    </tr>
                    <tr>
                        <th>Mô tả ngắn</th>
                        <td><input type="text" name="short_description" value="<?php echo $product['short_description']; ?>"></td>
                    </tr>

                    <tr>
                        <th>Mô tả đầy đủ</th>
                        <td><input type="text" name="full_description" value="<?php echo $product['full_description'];?>"></td>
                    </tr>
                    <tr>
                        <th>Giá</th>
                        <td><input type="text" name="cost" value="<?php echo $product['cost']; ?>"></td>
                    </tr>
                    <tr>
                        <th>Sản phẩm cũ</th>
                        <td><input type="text" name="product_old" value="<?php echo $product['product_old'];?>"></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>
                            <select name="published">
                                <option value="1" <?php echo $product['published']==1?' seclected ':'' ?>>Enable</option>
                                <option value="0" <?php echo $product['published']==0?' seclected ':'' ?>>Disable</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <button type="submit" class="btn btn-primary" name="save">Apply</button>
                            <button type="submit" class="btn btn-primary" name="save_close">Save & Hiển thị danh sách</button>

                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>

</body>
</html>

