package com.hbgc.springbootdemo.test;

/*
*
* 1.构造方法必须私有
*
* 2.public static XXX   getInstance  getXXXX
*
* 3.设计模式
*
*   A.懒汉模拟
*   B.饿汉模式
*   ...
* */

public class Dog {

    private String alias; //昵称

    private String type; //品种

    private String color; //颜色

    public Dog() {
    }

    public Dog(String alias, String type, String color) {
        this.alias = alias;
        this.type = type;
        this.color = color;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public String toString() {
        return "Dog{" +
                "alias='" + alias + '\'' +
                ", type='" + type + '\'' +
                ", color='" + color + '\'' +
                '}';
    }
}
