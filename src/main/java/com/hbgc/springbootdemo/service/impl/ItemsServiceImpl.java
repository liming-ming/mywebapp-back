package com.hbgc.springbootdemo.service.impl;

import com.hbgc.springbootdemo.domain.Items;
import com.hbgc.springbootdemo.repository.ItemsRepository;
import com.hbgc.springbootdemo.service.ItemsService;
import org.springframework.stereotype.Service;

import javax.naming.Name;
import javax.persistence.Id;

@Service
public class ItemsServiceImpl extends BaseServiceImpl<Items,Integer, ItemsRepository> implements ItemsService {
//    @Override
//    public Items add(String name, int shopId) {
//        return super.dao.findByGoodsnameandShopId(name,shopId);
//    }


//    @Override
//    public Items add(String name,Integer id) {
//        return super.dao.findByIdandAndName(name,id);
//    }
}
