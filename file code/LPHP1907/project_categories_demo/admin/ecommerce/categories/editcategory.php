
<!DOCTYPE html>
<html>
<head>
    <?php
    require_once "../../../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Edit categories</title>

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


$link_category = 'ecommerce/categories/editcategory.php';
$categories_id = $_GET['category_id'];

$query = "SELECT * FROM categories_t WHERE id = $categories_id";
$kq=mysqli_query($connection,$query);
$category = $kq->fetch_assoc();//trả về một mảng

if(isset($_POST['save']) || isset($_POST['save_close']))
{
    $title = $_POST['title'];
    $ordering = $_POST['ordering'];
    $published = $_POST['published'];


    $query1 = "UPDATE `categories_t` SET `title` = '$title', `ordering` = '$ordering', `published` = '$published' WHERE `categories_t`.`id` = $categories_id;";
    mysqli_query($connection, $query1);

    if(isset($_POST['save_close']))
    {

        header("location:".ADMIN_ROOT_SITE."ecommerce/categories/list.php");

    }
}



?>

<div class="container">
    <?php
    include_once ADMIN_ROOT_PATH."/components/top_header.php";
    ?>
    <form action="index.php" method="post">
        <h2>Đây là file editcategories.php trong thư mục admin</h2>
        <input type="submit" value="Đăng xuất" name="logout">
    </form>
    <div class="row">
        <?php
        include_once ADMIN_ROOT_PATH."/components/negative.php";
        ?>

        <div class="col-md-9">
            <h2>Sửa Categories</h2>
            <form action="<?php echo ADMIN_ROOT_SITE.$link_category;?>?category_id=<?php echo $category['id']?>" method="post">
                <table class="table">
                    <tr>
                        <th>Id</th>
                        <td><input type="text" name="id" disabled = "disabled" value="<?php echo $category['id']; ?>"></td>
                    </tr>
                    <tr>
                        <th>Title</th>
                        <td><input type="text" name="title" value="<?php echo $category['title']; ?>"></td>
                    </tr>
                    <tr>
                        <th>Ordering</th>
                        <td><input type="text" name="ordering" value="<?php echo $category['ordering']; ?>"></td>
                    </tr>
                    <tr>
                        <th>Status</th>
                        <td>
                            <select name="published">
                                <option value="1" <?php echo $category['published']==1?" seclected":"" ?>>Enable</option>
                                <option value="0" <?php echo $category['published']==0?" seclected":"" ?>>Disable</option>
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

