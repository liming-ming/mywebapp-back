package utils;

import java.util.ArrayList;
import java.util.List;

public class Result<T>{
    private List<T> list=new ArrayList<>();
    private T t;
    private Boolean aBoolean;
    private Integer status;
    private String address;

    public Result(List<T> list, T t, Boolean aBoolean, Integer status, String address) {
        this.list = list;
        this.t = t;
        this.aBoolean = aBoolean;
        this.status = status;
        this.address = address;
    }

    public Result() {
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public T getT() {
        return t;
    }

    public void setT(T t) {
        this.t = t;
    }

    public Boolean getaBoolean() {
        return aBoolean;
    }

    public void setaBoolean(Boolean aBoolean) {
        this.aBoolean = aBoolean;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
