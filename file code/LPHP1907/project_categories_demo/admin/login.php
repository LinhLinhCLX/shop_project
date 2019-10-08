<!DOCTYPE html>
<html>
<head>
    <?php
        require_once "../init.php";
        require_once ADMIN_ROOT_PATH."/components/head.php";

    ?>
    <title>Login system</title>

</head>
<body>

<?php
    require_once "../init.php";
    if(App::check_login())
    {
        hearder("location: index.php");
    }
    $username = ""; $password = "";
    if(isset($_POST['login']))
    {
        echo "vào được rồi";
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $password = md5($password);
        echo $password;
        echo $username;
        $query = "SELECT * FROM user WHERE username ='$username' AND password='$password' AND block ='0' ";
        $kq = mysqli_query($connection, $query);

        $user = $kq->fetch_assoc();
//        print_r($user);
        $json_user = json_encode($user);
//        print_r($json_user);
        if(isset($user['id']) && $user['id']>0)
        {
            $_SESSION['user'] = $user;
            header('location: index.php');
        }

    }

?>
<main class="row" style="margin: 30px auto;">
    <div class="col-md-4 col-sm-4">
        <h3>Login system</h3>
        <form action="login.php" method="post">
            <table>
                <tr>
                    <input type="text" name="username" class="form-control" placeholder="Username...">
                </tr>
                <tr>
                    <input type="password" name="password" class="form-control" placeholder="Password...">
                </tr>
                <tr>
                    <button class="btn btn-primary" name = "login" type="submit" >Login</button>
                </tr>
            </table>

<!--            style="width: 35px; height: 20px; padding: 10px; margin: 0 auto;"-->

        </form>
    </div>
</main>
</body>
</html>