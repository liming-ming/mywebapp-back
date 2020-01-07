package com.hbgc.springbootdemo.controller;


import com.hbgc.springbootdemo.domain.Cart;
import com.hbgc.springbootdemo.json.Json;
import com.hbgc.springbootdemo.service.CartService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/cart")
public class CartController extends BaseController {

    @Resource
    private CartService cartService;

    @PostMapping("/acart")
    public Map<String, Object> add(@RequestBody Cart cart) {


        try {
            cartService.save(cart);
            return Json.success(cart, "加入购物车成功");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("加入购物车失败");
        }

    }

}
