<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-27
 * Time: 19:38
 */

$a =10;
$a =20;
$b = 5;
echo $a;
echo $a+$b;
//声明变量
//变量可以在运行过程中修改

const THE_VALUE = 100;
echo THE_VALUE;
//声明常量
//常量只能被赋值一次，在运行过程中没法被修改

define('THE_VALUE',200);
echo THE_VALUE;
//另一种声明常量的方法，声明好了以后可以在任何地方访问常量
