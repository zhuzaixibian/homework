<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-28
 * Time: 16:15
 */



//for循环
for（$i=0;$i<100;$i++){
//    初始化、条件、代码
    echo 'Hello' .$i.'<br>';
}


//while 循环
$i=0;
while($i<100){
    echo 'Hello' .$i.'<br>';
    $i++;
}


//do while 循环
$i=0;
do{
    echo 'Hello' .$i. '<br>';
    $i++;
}while($i<100);



for($i=0;$i<100;$i++){
    echo 'Hello' .$i. '<br>';
    if($i==20){
        break;
    }
}
for($i=0;$i<100;$i++){
    echo 'Hello' .$i. '<br>';
    if($i==20){
        continue;
    }
    echo 'Run Here' .$i. '<br>';

//continue 跳出当前的循环进入下一层循环
}