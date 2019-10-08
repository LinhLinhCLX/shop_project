
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

function In_solanxuathien($mang_so)
{
    $chuoi="";
    if(isset($mang_so))
    {
        foreach($mang_so as $key => $value)
        {
            $chuoi .= $key.":".$value." ";
        }
        return $chuoi;
    }
}
function display_arr($mang)
{
    if(isset($mang[0])){
        return implode(", ", $mang);
    }
}
$message = "Đây và bài tập về mảng";
$mang_so = "";
$mang_duy_nhat = array();
$so_lan = array();

if(isset($_POST['mang_a']))
{
    $mang_so = explode(",", $_POST['mang_a']);
    $mang_duy_nhat = array_unique($mang_so); //dùng để xóa các phần tử trùng lặp trong mảng
    $solan=array_count_values($mang_so);

}

?>
<h1><?php echo $message; ?></h1>
<form action="array_taomang_duynhat.php" method="post">
    <table>
        <tr>
            <td>Mảng: </td>
            <td><input type="text" name="mang_a" value="<?php if(isset($_POST['mang_a'])) echo $_POST['mang_a']; else echo ""; ?>"></td>
        </tr>
        <tr>
            <td>Số lần xuất hiện: </td>
            <td><input type="text" name="mang_b" disabled="disabled" value="<?php if(isset($_POST['mang_a'])) echo In_solanxuathien($solan); else echo ""; ?>"></td>
        </tr>
        <tr>
            <td>Mảng duy nhất: </td>
            <td><input type="text" disabled="disabled" value="<?php if(isset($_POST['mang_a'])) echo display_arr($mang_duy_nhat); else echo ""; ?>"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Thực hiện"></td>
        </tr>

    </table>
</form>
</body>
</html>