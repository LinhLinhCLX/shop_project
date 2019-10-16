
<!DOCTYPE html>
<html>
<head>
    <?php
    require_once "../../../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Trang list products</title>

</head>
<body>
<?php

if(!App::check_login())
{
    header("location:../../login.php");
}
if (isset($_POST['logout']))
{
    //   session_destroy();
    unset($_SESSION['user']);
    header('location: ../../login.php');
}
//<td><?php echo  $item['tensanpham']  <!--</td>-->
 //echo  $item['links']<!--</td>-->
//echo  $item['short_description']<!--</td>-->
//echo  $item['full_description']<!--</td>-->
//echo  $item['cost']<!--</td>-->
//echo  $item['published']<!--</td>-->
//echo  $item['product_old']<!--</td>-->

//    create news
if(isset($_POST['add-new']))
{
    $tensanpham = $_POST['tensanpham'];
    $links = $_POST['links'];
    $short_description = $_POST['short_description'];
    $full_description = $_POST['full_description'];
    $cost = $_POST['cost'];
    $published = $_POST['published'];

    $product_old = $_POST['product_old'];
    $query = "INSERT INTO `products` (`tensanpham`, `links`, `short_description`, `full_description`, `cost`, `product_old`, `published`) VALUES ('$tensanpham', '$links', '$short_description', '$full_description', '$cost', '$product_old', '$published');";
    $kq1 = mysqli_query($connection, $query);
}
//    delete category
if(isset($_GET['action']) && $_GET['action'] == 'delete')
{
    $product_id = $_GET['product_id'];
    $query = "DELETE FROM `products` WHERE id = '$product_id'";
    $kq2 = mysqli_query($connection, $query);


}

$query = "SELECT * FROM products";
$kq=mysqli_query($connection,$query);
?>

<div class="container">
    <?php
    include_once ADMIN_ROOT_PATH."/components/top_header.php";
    ?>
    <form action="index.php" method="post">
        <h2>Đây là file list.php trong thư mục admin</h2>
        <input type="submit" value="Đăng xuất" name="logout">
    </form>
    <div class="row">
        <?php
        include_once ADMIN_ROOT_PATH."/components/negative.php";
        ?>

        <div class="col-md-9">
            <h2>Đây là phần content</h2>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Tên sản phẩm </th>
                    <th>Links ảnh</th>
                    <th>Short Description</th>
                    <th>Full Description</th>
                    <th>Cost</th>
                    <th>Status</th>
                    <th>Sản phẩm cũ</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($kq as $item){ ?>
                    <tr>
                        <td><?php echo  $item['id']  ?></td>
                        <td><?php echo  $item['tensanpham']  ?></td>
                        <td><?php echo  $item['links']?></td>
                        <td><?php echo  $item['short_description']?></td>

                        <td><?php echo  $item['full_description']?></td>
                        <td><?php echo  $item['cost']?></td>

                        <td><?php echo  $item['published']?></td>
                        <td><?php echo  $item['product_old']?></td>
                        <td>
                            <button class="btn btn-primary"><a style="color: white;" href="<?php echo ADMIN_ROOT_SITE; ?>/ecommerce/producttions/addproduct.php">Add</a></button>
                            <button class="btn btn-success"><a href="<?php echo ADMIN_ROOT_SITE; ?>/ecommerce/producttions/editproduct.php?product_id=<?php echo $item['id'] ?>" style="color: #ffffff;">Edit</a></button>
                            <button class="btn btn-danger"><a style="color: white;" href="<?php echo ADMIN_ROOT_SITE; ?>/ecommerce/producttions/listproducts.php?action=delete&product_id=<?php echo $item['id'] ?>">Delete</a></button>
                        </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>

        </div>
    </div>
</div>

</body>
</html>

