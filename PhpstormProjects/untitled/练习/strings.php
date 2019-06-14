<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-29
 * Time: 10:17
 */

$str = 'Hello PHP';
//字符串可以用单引号或双引号
//echo $str;

echo strpos($str,'PH');

$str1= substr($str,2,3);
//$str,从哪里开始，截取长度
echo $str1;

$result = str_split($str);
echo $result;
//无法把上面的数组当成字符串去输出，输出数组要采用另一种方法，如下
print_r($result);

//如何用空格进行分割？
$str2='Hello PHP Java C# C++';
$result=explode(' ',$str);
echo $result;

//字符串的链接
$num=100;
$str3=$str . '<br> Objective-C' .$num;
echo $str3;
//PHP里在字符串里可以直接把要写的变量放进去
$str4="$str<br>Objective-C$num";
echo $str4;