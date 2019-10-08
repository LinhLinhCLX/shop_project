<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>	</title>
    <link rel="stylesheet" href="">
</head>
<body>
<?php
    $name = "";
    if(isset($_POST['username']))
    {
        $name = $_POST['username'];
    }


?>
<form action="demo.php" method="post">
    <table>
        <tr>
            <td colspan="2"> In ra lời chào</td>
        </tr>
        <tr>
            <td>Họ tên: </td>
            <td><input type="text" name="username" value="<?php echo $name; ?>"></td>
        </tr>
        <tr>
            <td colspan="2">
                <?php
                    echo "Xin chào ", $name;
                ?>
            </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="xuất hiện"></td>
        </tr>

    </table>
</form>

</body>
</html>