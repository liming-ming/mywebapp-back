package com.hbgc.springbootdemo.test;

import cn.hutool.core.lang.Singleton;

public class TestSingletonDemo {

    public static void main(String[] args) {

        Dog d1 =  Singleton.get(Dog.class);
        Dog d2 =  Singleton.get(Dog.class);

        System.out.println(d1 == d2); //true 单例的。
    }
}
