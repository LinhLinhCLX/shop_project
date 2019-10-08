<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kiểm tra số</title>
    <link rel="stylesheet" href="">
</head>
<body>
<?php
    $number ="";
    $alpha ="";
    if(isset($_POST['number']))
    {
        if(is_numeric($_POST['number']))
        {
            $number = $_POST['number'];
            switch ($number)
            {
                case 0:
                    $alpha = "Không";
                    break;
                case 1:
                    $alpha = "Một";
                    break;
                case 3:
                    $alpha = "Ba";
                    break;
                case 4:
                    $alpha = "Bốn";
                    break;
                case 5:
                    $alpha = "Năm";
                    break;
                case 6:
                    $alpha = "Sau";
                    break;
                case 7:
                    $alpha = "Bảy";
                    break;
                case 8:
                    $alpha = "Tám";
                    break;
                 case 9:
                    $alpha = "Chín";
                    break;
                case 2:
                    $alpha = "Hai";
                    break;
                default: "Không hợp lệ";
            }
        }
        else
        {
            $alpha = "Không phải số";
        }
    }
    else
    {
        $alpha = "Yêu cầu nhập số!";

    }

?>
<form action="demo_switch_case.php" method="post">
    <table style="border: 5px solid lightblue; margin: 0 auto;">
        <tr>
            <td><h3>Kiểm tra số</h3></td>
        </tr>
        <tr>
            <td>Nhập vào số 0-9: </td>
            <td><input type="text" value="<?php echo $number; ?>" name="number"></td>
        </tr>
        <tr>
            <td colspan="4"><input type="submit" value="Kiểm tra"></td>
        </tr>
        <tr>
            <td>Kết quả: </td>
            <td><input type="text" value="<?php echo $alpha; ?>" name="alpha"></td>
        </tr>
    </table>


</form>
</body>
</html>
