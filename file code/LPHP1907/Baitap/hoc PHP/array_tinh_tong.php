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


    function sum_array($arr, $number)
    {
        $sum = 0;
        foreach($arr as $key=> $value)
        {
            $sum += $value;
        }
        return $sum;
    }

?>
<?php
    $kq = 0; $arr_number = []; $arr="";
    if(isset($_POST['dayso']))
    {
        $arr=$_POST['dayso'];
        $arr_number = explode(",",$_POST['dayso']);
        $n = count($arr_number);
        for($i=0; $i<$n; $i++)
        {
            if(is_numeric($arr_number[$i]))
            {
                $kq += $arr_number[$i];
            }
            else
                $kq = "Dãy bạn nhập vào không phải dãy số";
        }
    }


?>
<h1>Đây và bài tập về mảng</h1>
<form action="array_tinh_tong.php" method="post">
    <table>
        <tr>
            <td>Nhập dãy số: </td>
            <td><input type="text" name="dayso" value="<?php echo $arr; ?>"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Tổng dãy số"></td>
        </tr>
        <tr>
            <td>Tổng dãy số: </td>
            <td><input type="text" name="ketqua" value="<?php echo $kq; ?>"></td>
        </tr>
    </table>
</form>
</body>
</html>