<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Control Flow</title>
</head>
<body>

<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-27
 * Time: 21:21
 */

function getLevel($score){
    if($score>=90){
        return '优秀';

    }elseif($score>=80){
        return '良好';
    }
    elseif ($score>=70){
        return '好';
    }
    elseif($score>=60){
        return '可以';
    }
    else{
        return '差';
    }
    switch (intval($score/10)){
        case 10:
        case 9:
            return '优秀';
        case 8:
            return '良好';
        case 7:
            return '好';
        case 6:
            return '可以';
        default:
            return '差';
//return直接跳出方法了，如果不想直接跳出整个方法可以break

    }
}
echo getLevel(91);
?>


</body>
</html>
