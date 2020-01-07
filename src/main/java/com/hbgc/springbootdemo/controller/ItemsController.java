package com.hbgc.springbootdemo.controller;

import cn.hutool.json.JSON;
import com.hbgc.springbootdemo.domain.Items;
import com.hbgc.springbootdemo.json.Json;
import com.hbgc.springbootdemo.service.ItemsService;
import io.swagger.annotations.ApiOperation;
import net.sf.jsqlparser.expression.operators.relational.ItemsList;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;
import utils.Result;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/*
 * 使用elementui的分页组件，无需再使用后端的分页技术，
 * mybatis,
 * jpa
 * 都不使用。
 *
 *
 * */

@RestController
@RequestMapping("/items")
public class ItemsController extends BaseController {

    @Resource
    private ItemsService itemsService;


    @GetMapping("/qall")
    @ApiOperation(value = "查询所有商品资料接口", notes = "查询所有商品资料")
    //@ApiImplicitParam(name = "token", value = "token值", required = true)
    public Map<String, Object> queryAllItems() {
        List<Items> itemsList = null;
        try {
            itemsList = itemsService.findAll();
            return Json.success(itemsList, "查询商品资料成功！");

        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("查询商品资料失败！");
        }
    }


    @GetMapping("/qbyid")
    public Map<String, Object> qbyid(Integer id) {
        try {
            Items items = itemsService.getOne(id);
            return Json.success(items, "查询商品详细信息成功");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("查询商品详细信息失败");
        }


    }

    @RequestMapping("/add")
    public Map<String, Object> add(Items items) {
//        itemsService.save(items);
//        return Json.success("null","添加成功");
        Result<Items> result = new Result<>();


        try {
            itemsService.save(items);
//            result.setAddress("添加成功");
            return Json.success(null, "添加成功");
        } catch (Exception ex) {
            ex.printStackTrace();
//            result.setAddress("添加失败");
            return Json.fail("添加失败");
        }

    }


    @GetMapping("/show")

    public Map<String, Object> show() {
        try {
            List<Items> itemsList = itemsService.findAll();
            return Json.success(itemsList, "查询商品资料成功");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("查询商品资料失败");
        }

    }

}
