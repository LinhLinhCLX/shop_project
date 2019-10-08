<?php
//định nghĩa các function xem người dùng đã đăng nhập chưa
define("ADMIN_ROOT_PATH", __DIR__);
define("ADMIN_ROOT_SITE", "http://localhost/file%20code/LPHP1907/project_categories_demo/admin/");
//todo sẽ xử lý sau
class App
{
    static function check_login()
    {
        $user = $_SESSION['user'];
        //print_r($_SESSION['user']);
//        $user = json_decode($_SESSION['user']);
        if($user['id'] >0)
            return true;
        return false;
    }
}