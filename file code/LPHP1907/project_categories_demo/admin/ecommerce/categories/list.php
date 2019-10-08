
<!DOCTYPE html>
<html>
<head>
    <?php
    require_once "../../../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Trang list</title>

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


//    create news
    if(isset($_POST['add-new']))
    {
        $title = $_POST['title'];
        $ordering = $_POST['ordering'];
        $published = $_POST['published'];
        $query = "INSERT INTO `categories_t` (`title`, `ordering`, `published`) VALUES ('$title', '$ordering', '$published');";
        $kq1 = mysqli_query($connection, $query);
    }
//    delete category
    if(isset($_GET['action']) && $_GET['action'] == 'delete')
    {
            $category_id = $_GET['category_id'];
            $query = "DELETE FROM `categories_t` WHERE id = '$category_id'";
            $kq2 = mysqli_query($connection, $query);


    }

    $query = "SELECT * FROM categories_t";
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
            <table class="table">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Ordering</th>
                    <th>Static</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach($kq as $item){ ?>
                    <tr>
                        <td><?php echo  $item['id']  ?></td>
                        <td><?php echo  $item['title']  ?></td>
                        <td><?php echo  $item['ordering']?></td>
                        <td><?php echo  $item['published']?></td>
                        <td>
                            <button class="btn btn-primary"><a style="color: white;" href="<?php echo ADMIN_ROOT_SITE; ?>/ecommerce/categories/addcategory.php">Add</a></button>
                            <button class="btn btn-success"><a href="<?php echo ADMIN_ROOT_SITE; ?>/ecommerce/categories/editcategory.php?category_id=<?php echo $item['id'] ?>" style="color: #ffffff;">Edit</a></button>
                            <button class="btn btn-danger"><a style="color: white;" href="<?php echo ADMIN_ROOT_SITE; ?>/ecommerce/categories/list.php?action=delete&category_id=<?php echo $item['id'] ?>">Delete</a></button>
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

