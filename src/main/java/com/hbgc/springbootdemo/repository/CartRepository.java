package com.hbgc.springbootdemo.repository;

import com.hbgc.springbootdemo.domain.Cart;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

public interface CartRepository extends BaseRepository<Cart, Integer> {

}
