<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-04-10
 * Time: 11:46
 */

if (empty($_GET['id'])){
    die('id is empty');
}

connectDb();
$id = intval($_GET['id']);

mysqli_query("DELETE FROM departments WHERE id= $id");

if(mysql_errno()){
    die("Fail to delete department with id $id");
}
else{
    hearder("Loc")
}