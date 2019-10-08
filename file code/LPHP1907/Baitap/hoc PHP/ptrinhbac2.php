<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Giải phương trình bác 2</title>
    <link rel="stylesheet" href="">
</head>
<body>
<?php $x1 =""; $x2 ="";
$a =""; $b=""; $c=""; $nghiem="";
$delta ="";
function delta($a, $b, $c)
{
    $delta = $b*$b - 4*$a*$c;
    return $delta;
}
function giaiphuongtrinhbac1($a, $b)
{
    if ($a != 0)
    {
        if($b != 0)
        {
            $x1 =  - $b/$a;
            return $x1;
        }
        else
        {
            return $nghiem = "Phương trình vô số nghiệm";
        }
    }
    else
    {
        return $nghiem = "Phương trình vô nghiệm";
    }
}

function giaiphuongtrinhbac2($a, $b, $c)
{
        if(is_numeric($a) || is_numeric($b) || is_numeric($c))
        {
            if ($a == 0)
            {
//                chạy chương trình bậc 1
                return $nghiem = giaiphuongtrinhbac1($b, $c);
            }
            else
            {
                $delta = delta($a, $b, $c);
                if($delta < 0)
                    return $nghiem = "Phương trình vô nghiệm";
                else if($delta == 0)
                {
                    $x1 = -$b/(2*$a);
                    return $nghiem = "Phương trình có một nghiệm x = "+$x1;

                }
                else
                {
                    $sqrt_delta = sqrt($delta);
                    $x1 = (-$b - $sqrt_delta)/(2*$a); $x1 = round($x1,2);
                    $x2 = (-$b + $sqrt_delta)/(2*$a); $x2 = round($x2,2);
                    return $nghiem = "Phương trình có 2 nghiệm x1 = "+x1+" x2 = "+x2;
                }
            }
        }
}

if(isset($_POST['a']) && isset($_POST['b']) && isset($_POST['c']))
{
$a = $_POST['a'];
$b = $_POST['b'];
$c = $_POST['c'];



?>
<form action="pt_bac2.php" method="post">
    <table border="1" style="border: 5px solid lightblue; margin: 0 auto;">
        <tr>
            <td>Giải phương trình bậc 2</td>
        </tr>
        <tr>
            <td><input type="text" name="a" value="<?php echo $a; ?>">X <sup>2</sup> + <input type="text" name="b" value="<?php echo $b; ?>">X + <input type="text" value="<?php echo $c; ?>" name="c"> = 0</td>
        </tr>
        <tr>
            <td>Kết quả: <br>

                <?php echo $nghiem; ?><br>
                <?php echo $x1; ?><br>
                <?php echo $x2; ?><br>
            </td>

        </tr>
        <tr>
            <td colspan="4"><input type="submit" value="tính"></td>
        </tr>
    </table>


</form>
</body>
</html>
