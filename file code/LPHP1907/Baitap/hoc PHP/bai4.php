<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>	</title>
    <link rel="stylesheet" href="">
</head>
<body>
<!-- BÀi tập tính các loại dãy số-->
<?php
    $number_first=""; $number_last="";
    $tong = ""; $tich = ""; $tongsochan=""; $tongsole=""; $ngoaile="";
    if(isset($_POST['number-first']) && isset($_POST['number-last']))
    {
        if(is_numeric($_POST['number-first']) || is_numeric($_POST['number-last']))
        {
            $number_first = $_POST['number-first'];
            $number_last = $_POST['number-last'];
            //Tính tổng
            $tong = 0;
            for($i = $number_first; $i <= $number_last; $i++)
            {
                $tong += $i;
            }
            //Tính tích các số
            $tich = 1;
            for($i = $number_first; $i <= $number_last; $i++)
            {
                if($i == 0) $tich = 0;
                else{
                    $tich *= $i;
                }

            }
            $tongsochan = 0;
            $tongsole = 0;
            for($i = $number_first; $i <= $number_last; $i++)
            {
                if(($i % 2) == 0)
                    $tongsochan += $i;
                else
                    $tongsole += $i;
            }
        }
        else
            $ngoaile = "Yêu cầu nhập đúng chữ số!!!";
    }
?>
<form action="bai4.php" method = "post">
    <table border="1" style = "border: 2px solid darkolivegreen;">
        <tr>
            <td></td>
            <td>Số bắt đầu</td>
            <td><input type="text" name="number-first" value="<?php echo $number_first; ?>"></td>
            <td>Số kết thúc</td>
            <td><input type="text" name="number-last" value="<?php echo $number_last; ?>"></td>
        </tr>
        <tr>
            <td colspan="5">Kết quả  <?php echo $ngoaile; ?></td>
        </tr>
        <tr>
            <td>Tổng các số</td>
            <td colspan="4"><input type="text" name="tong" value="<?php echo $tong ?>"></td>
        </tr>
        <tr>
            <td>Tích các số</td>
            <td colspan="4"><input type="text" name="tich" value="<?php echo $tich ?>"></td>
        </tr>
        <tr>
            <td>Tổng các số chẵn</td>
            <td colspan="4"><input type="text" name="tongsochan"  value="<?php echo $tongsochan ?>"></td>
        </tr>
        <tr>
            <td>Tổng các số lẻ</td>
            <td colspan="4"><input type="text" name="tongsole"  value="<?php echo $tongsole ?>"></td>
        </tr>
        <tr>
            <td colspan="5"><input type="submit" value="Tính toán"></td>
        </tr>
    </table>

</form>

</body>
</html>