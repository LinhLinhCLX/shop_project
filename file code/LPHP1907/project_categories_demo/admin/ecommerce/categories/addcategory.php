
<!DOCTYPE html>
<html lang="en">
<head>
    <?php
    require_once "../../../init.php";
    require_once ADMIN_ROOT_PATH."/components/head.php";
    ?>
    <title>Add category</title>
</head>
<body>
<div class="container">

    <?php
    include_once ADMIN_ROOT_PATH."/components/top_header.php";
    ?>
    <div class="row">
        <h1>Đây là file addcategory.php</h1>
        <?php include_once ADMIN_ROOT_PATH."/components/negative.php"?>
        <div class="col-md-9">
            <form action="<?php echo ADMIN_ROOT_SITE ?>/ecommerce/categories/list.php" method="post">
                <table class="table">
                    <tr>
                        <td>Title</td>
                        <td><input type="text" name="title"></td>
                    </tr>
                    <tr>
                        <td>Ordering</td>
                        <td><input type="text" name="ordering"></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td>
                            <select name="published">
                                <option value="1">Publish</option>
                                <option value="0">UnPublish</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><button class="btn btn-primary" name = "add-new">Add News</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>


</body>
</html>