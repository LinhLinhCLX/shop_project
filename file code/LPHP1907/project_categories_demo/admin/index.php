<!DOCTYPE html>
<html>
<head>
    <?php
        require_once "../init.php";
        require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Trang index</title>

</head>
<body>
<?php
    require_once ('../init.php');
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
    if (isset($_POST['news']))
    {
        header('location: new.php');
    }
?>

<form action="index.php" method="post">
    <h2>Đây là file index.php trong thư mục admin</h2>
    <input type="submit" value="Mở trang new" name="news">
    <input type="submit" value="Đăng xuất" name="logout">
</form>
<div class="container">
    <?php
        include_once ADMIN_ROOT_PATH."/components/top_header.php";
    ?>
    <div class="row">
        <?php
        include_once ADMIN_ROOT_PATH."/components/negative.php";
        ?>

        <div class="col-md-9">
            <h2>Đây là phần content</h2>


        </div>
    </div>
</div>

</body>
</html>

