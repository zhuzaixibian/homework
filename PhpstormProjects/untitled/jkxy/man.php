<?php
/**
 * Created by PhpStorm.
 * User: zhangxintong
 * Date: 2019-03-29
 * Time: 17:13
 */

class Man{
    /**
     * Man constructor.
     * @param int $age 这个人的年龄
     * @param string $name 这个人的名字
     */
    public function __construct($age,$name)
    {
//      echo 'Construct a man';

        $this->_age = $age;
        $this->_name = $name;
        Man::$NUM++;

        if (Man::$NUM > Man::MAX_MAN_NUM) {
            throw new Exception('不能创建更多的人');
        }
    }

    public function getAge(){
        reture $this->_age;

    }
    public function getName(){
        return $this->_name();

    }

    private $_age,$_name;
    const MAX_MAN_NUM = 200;
    public static function sayHello(){
        echo 'hello man';
    }
}
//构造方法，会在创建类的实例时执行
