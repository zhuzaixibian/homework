<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-29
 * Time: 11:30
 */

//数组
$arr=array();
$arr[0]='Hello';
$arr[1]='World';
$arr[2]=2;
$arr[3]=3.14;

print_r($arr);

//array开头的很多函数 array_push 添加数组 array_pop删掉最后一个元素

for($i=0;$i<100;$i++){
    array_push($arr,'Item'.$i);
}

print_r($arr);

//可以通过键值对方式来指明元素
$arr=array();
$arr['h']= 'Hello';
$arr['w']= 'World';
print_r($arr);
//访问某个键值
echo $arr['h'];

//php数组初始化
$arr=array(0=>'jike',1=>'iwen','h'=>'Hello','w'=>'World','name'=>'jikexueyuan');
print_r($arr);
//两种访问方式
echo $arr['h'];
echo $arr['name'];