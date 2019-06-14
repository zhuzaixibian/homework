<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-28
 * Time: 16:41
 */

//简单计算
function traceNum(){
    for($i=0;$i<=100;$i++){
        if($i%2==0){
            echo $i. '<br>';
        }
    }
}
traceNum();

//逻辑计算 能被 2 和 3 整除
function traceNum(){
    for($i=0;$i<=100;$i++){
        if($i%2==0 && $i%3==0){
            echo $i. '<br>';
        }
    }
}
traceNum();


//逻辑计算 能被 2 或 3 整除
function traceNum(){
    for($i=0;$i<=100;$i++){
        if($i%2==0 || $i%3==0){
            echo $i. '<br>';
        }
    }
}
traceNum();