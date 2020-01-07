package com.hbgc.springbootdemo.repository;

import com.hbgc.springbootdemo.domain.Items;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

public interface ItemsRepository extends BaseRepository<Items, Integer> {
    //    Items findByGoodsnameandShopId(String name,int shopId);
//    Items findGoodsById(Integer id);
//
//     Items add(Items items);
//    Items findByIdandAndName(String name,Integer id);


}

