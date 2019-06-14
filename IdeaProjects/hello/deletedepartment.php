<?php
/**
 * Created by IntelliJ IDEA.
 * User: zhangxintong
 * Date: 2019-04-10
 * Time: 14:36
 */

require_once 'index.php';

//排空错误
if(empty($_GET['id'])){
    die('id is empty');
}
//连接数据库
connnetDb();

$id=intval($_GET['id']);

//删除指定数据

mysql_query("DELETE FROM users WHERE id=$id");
//排错并返回页面
if(mysql_error()){
    echo mysql_error();
}else{
    header("Location:index.html");
}

