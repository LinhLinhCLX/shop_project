<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    require_once "../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>New manage</title>
</head>
<body>
<?php
require_once('../init.php');
if(!App::check_login())
{
    header("location:admin/login.php");
}

    $query = "SELECT * FROM new";
    $kq = mysqli_query($connection, $query);


    if (isset($_POST['logout']))
    {
    //        session_destroy();
        unset($_SESSION['user']);
        header('location: login.php');
    }
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

        <div class="container col-md-8">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Title</th>
                    <th>Short Description</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php while ($row=mysqli_fetch_array($kq)){ ?>
                    <tr>
                        <td><?php echo  $row['id']  ?></td>
                        <td><?php echo  $row['title']  ?></td>
                        <td><?php echo  $row['short_description']?></td>
                        <td>
                            <button class="btn btn-primary"><a style="color: white;">Add</a></button>
                            <button class="btn btn-success"><a style="color: white;">Edit</a></button>
                            <button class="btn btn-danger"><a style="color: white;">Delete</a></button>
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