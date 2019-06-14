<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-27
 * Time: 19:48
 */

function traceHelloPHP(){
    echo 'Hello PHP<br>';
    echo 'Hello World<br>';
}
traceHelloPHP();
//调用函数

$func = 'traceHelloPHP';
$func();
//也可以通过此种方法执行


function sayHelloTo($name){
    echo'Hello'.$name; '<br>';
}
//传入参数,传进张三，就会输出hell.张三

sayHelloTo('张三');
sayHelloTo('李四');

//function traceNum($a,$b){
//    echo 'a= '.$a.' , b = '.$b.'<br>';
//}
//traceNum(2,3);

//传入参数写出来，写法较复杂，还有更简单的方法

function traceNum($a,$b){
    echo"a=$a,b=$b";
}

taceNum(2,3);

function add($a,$b){
    return $a+$b;
}
echo add(10,2).'<br>';
