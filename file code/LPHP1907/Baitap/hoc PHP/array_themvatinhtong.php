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


function sum_array($arr, $n)
{
    $sum = 0;
    for($i = 0; $i<$n;$i++)
    {
        $sum += $arr[$i];
    }
    return $sum;
}

function max_arr($max = 0, $arr, $n)
{
    for($i = 0; $i<$n;$i++)
    {
        if($arr[$i]>$max)
            $max = $arr[$i];
        else
            $max;
    }
    return $max;
}
function min_arr($min = 10000000, $arr, $n)
{
    for($i = 0; $i<$n;$i++)
    {
        if($arr[$i]<$min)
            $min = $arr[$i];
        else
            $min;
    }
    return $min;
}
function create_arr($n)
{
    for($i = 0; $i<$n; $i++)
    {
        $arr[$i] = mt_rand(0, 20);
    }
    return $arr;

}
function display_arr($arr)
{
    return implode(" ", $arr);
}
?>
<?php
$kq = 0; $arr_number =""; $arr="";
$n = 0; $max_arr=""; $min_arr="";
$message = "Đây và bài tập về mảng";
if(isset($_POST['n']))
{
    if(is_numeric($_POST['n']))
    {
        $n=$_POST['n'];
        $arr_number = create_arr($n);
        $kq = sum_array($arr_number, $n);
        $max_arr = max_arr(0, $arr_number, $n);
        $min_arr = min_arr(1000, $arr_number, $n);
        $arr = display_arr($arr_number);
    }
    else
        $message = "Kí tự bạn nhập không phải là số";

}


?>
<h1><?php echo $message; ?></h1>
<form action="array_themvatinhtong.php" method="post">
    <table>
        <tr>
            <td>Nhập số phần tử: </td>
            <td><input type="text" name="n" value="<?php echo $n; ?>"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Phát sinh và tính toán"></td>
        </tr>
        <tr>
            <td>Mảng: </td>
            <td><input type="text" name="mang" value="<?php echo $arr; ?>"></td>
        </tr>
        <tr>
            <td>GTLN (max) trong mảng: </td>
            <td><input type="text" name="max_a" value="<?php echo $max_arr; ?>"></td>
        </tr>
        <tr>
            <td>GTNN (min) trong mảng: </td>
            <td><input type="text" name="min_a" value="<?php echo $min_arr; ?>"></td>
        </tr>

        <tr>
            <td>Tổng dãy số: </td>
            <td><input type="text" name="ketqua" value="<?php echo $kq; ?>"></td>
        </tr>
    </table>
</form>
</body>
</html>