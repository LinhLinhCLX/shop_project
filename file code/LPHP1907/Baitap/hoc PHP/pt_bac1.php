<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Giải phương trình bác 1</title>
    <link rel="stylesheet" href="">
</head>
<body>
<?php $x = "";
    if(isset($_POST['a']) && isset($_POST['b']))
    {
        if(is_numeric($_POST['a']) && is_numeric($_POST['b']))
        {
            $a = $_POST['a'];
            $b = $_POST['b'];
            if ($a != 0)
            {
                if($b != 0)
                {
                    $x =  - $b/$a;
                }
                else
                {
                    $x = "Phương trình vô số nghiệm";
                }
            }
            else
            {
                $x = " Biến a phải khác 0";
            }

        }
        else{
            $x = " Biến phải là số";
        }
    }
    else
    {
        $x = "Yêu cầu nhập số";
    }
?>
<form action="pt_bac1.php" method="post">
    <table style="border: 5px solid lightblue; margin: 0 auto;">
        <tr>
            <td>Giải phương trình bậc 1</td>
        </tr>
        <tr>
            <td><input type="text" name="a">X + <input type="text" name="b"> = 0</td>
        </tr>
        <tr>
            <td><?php echo "Nghiệm x = ", $x; ?></td>
        </tr>
        <tr>
            <td colspan="3"><input type="submit" value="tính"></td>
        </tr>
    </table>


</form>
</body>
</html>
