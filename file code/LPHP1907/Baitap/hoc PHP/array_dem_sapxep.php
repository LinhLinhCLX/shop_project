
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
$mang_c= array(); $arr = array();
function display_arr($arr)
{
    return implode(" ",$arr);
}
function create_arr($str)
{
    return explode(",",$str);
}
function mang_c_tang($mang)
{
    if(isset($mang[0])){
        sort($mang);
        return implode(", ", $mang);
    }

}
function mang_c_giam($mang)
{
    if(isset($mang[0])){
        rsort($mang);
        return implode(", ", $mang);
    }
}
?>
<?php
$mang_a=""; $mang_b ="";$chuoimang_a=""; $chuoimang_b ="";
$message = "Đây và bài tập về mảng"; $a_count ="";$b_count="";
$mang_c_giam=""; $mang_c_tang="";
if(isset($_POST['mang_a']) && isset($_POST['mang_b']))
{
    $mang_a = create_arr($_POST['mang_a']);
    $mang_b = create_arr($_POST['mang_b']);
    $mang_c = array_merge($mang_a,$mang_b);
//
//    $mang_c_tang = mang_c_tang($mang_c);
//    $mang_c_giam = mang_c_giam($mang_c);
}


?>
<h1><?php echo $message; ?></h1>
<form action="array_dem_sapxep.php" method="post">
    <table>
        <tr>
            <td>Mảng A: </td>
            <td><input type="text" name="mang_a" value="<?php  if(isset($_POST['mang_a'])) echo $_POST['mang_a']; else echo ""; ?>"></td>
        </tr>
        <tr>
            <td>Mảng B: </td>
            <td><input type="text" name="mang_b" value="<?php if(isset($_POST['mang_b'])) echo $_POST['mang_b']; else echo ""; ?>"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Thực hiện"></td>
        </tr>
        <tr>
            <td>Số phần tử mảng A: </td>
            <td><input type="text" value="<?php if(isset($_POST['mang_a'])){echo count(create_arr($_POST['mang_a']));}  else echo ""; ?>"></td>
        </tr>
        <tr>
            <td>Số phân tử mảng B: </td>
            <td><input type="text" value="<?php if(isset($_POST['mang_b'])) echo count(create_arr($_POST['mang_b'])); else echo ""; ?>"></td>
        </tr>
        <tr>
            <td>Mảng C: </td>
            <td><input type="text" value="<?php  if(isset($_POST['mang_a']) && isset($_POST['mang_b'])) echo display_arr($mang_c); else echo "";  ?>"></td>
        </tr>
        <tr>
            <td>Mảng C tăng dần: </td>
            <td><input type="text"  value="<?php if(isset($_POST['mang_a']) && isset($_POST['mang_b'])) echo mang_c_tang($mang_c); else echo ""; ?>"></td>
        </tr>
        <tr>
            <td>Mảng C giảm dần: </td>
            <td><input type="text"  value="<?php if(isset($_POST['mang_a']) && isset($_POST['mang_b'])) echo mang_c_giam($mang_c); else echo ""; ?>"></td>
        </tr>
    </table>
</form>
</body>
</html>