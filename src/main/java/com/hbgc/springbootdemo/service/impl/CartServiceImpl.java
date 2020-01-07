package com.hbgc.springbootdemo.service.impl;


import com.hbgc.springbootdemo.domain.Cart;
import com.hbgc.springbootdemo.repository.CartRepository;
import com.hbgc.springbootdemo.service.CartService;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl extends BaseServiceImpl<Cart, Integer, CartRepository> implements CartService {
}
