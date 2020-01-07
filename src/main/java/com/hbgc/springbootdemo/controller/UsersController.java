package com.hbgc.springbootdemo.controller;

import com.hbgc.springbootdemo.domain.Users;
import com.hbgc.springbootdemo.json.Json;
import com.hbgc.springbootdemo.service.UsersService;
import com.hbgc.springbootdemo.util.token.TokenUtils;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.Map;

@RestController
@RequestMapping("users")
public class UsersController extends BaseController {

    @Resource
    private UsersService usersService;


    @ApiOperation(value = "用户登录接口", notes = "URL传入用户名和密码执行用户登录")
    @ApiImplicitParam(name = "token", value = "token值", required = true)
    @GetMapping("login") //@RequestParam
    public Map<String, Object> loginByMathCode(String token,String username,String password,String validateCode) {
        System.out.println("in controller-->token=" + token);
        System.out.println("username:"+username);
        System.out.println("password:"+password);
        System.out.println("validateCode:"+validateCode);

        Users loginUser = null;
        try {

            if(!checkValidateCode(token,validateCode)){
                return Json.fail("验证码不正确！");
            }

            System.out.println("验证码验证成功！");
            System.out.println("username=" + username);
            System.out.println("password=" + password);

            loginUser = usersService.login(username, password);
            if (loginUser != null) {
                return Json.success(loginUser, "登录成功!");
            }
            return Json.fail("登录失败!");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("登录失败!");
        }
    }



    @ApiOperation(value = "用户登录接口", notes = "URL传入用户名和密码执行用户登录")
    @ApiImplicitParam(name = "token", value = "token值", required = true)
    @GetMapping("login3") //@RequestParam
    public Map<String, Object> loginByRandomCode(String token,String username,String password,String validateCode) {
        System.out.println("in controller-->token=" + token);
        System.out.println("username"+username);
        System.out.println("password:"+password);
        System.out.println("validateCode:"+validateCode);

        Users loginUser = null;
        try {

            if(!checkValidateCode(token,validateCode)){
                return Json.fail("验证码不正确！");
            }

            System.out.println("验证码验证成功！");
            System.out.println("username=" + username);
            System.out.println("password=" + password);

            loginUser = usersService.login(username, password);
            //服务器需要一种算法，返回给客户端一个token，这个token作用是为了以后进行身份验证。
            //用登录成功的用户生成一个token值。
            String auth_token = TokenUtils.getToken(username);
            loginUser.setToken(auth_token);

            if (loginUser != null) {
                return Json.success(loginUser, "登录成功!");
            }
            return Json.fail("登录失败!");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("登录失败!");
        }
    }




    //Get 配 @RequestParam  URL传参方式来接收。
    //http://localhost:8888/mooddemo/user/login?username=xxxxx&password=xxx

    //Post 配 @RequestBody
    @ApiOperation(value = "用户登录接口2", notes = "URL传入用户JSON对象执行用户登录")
    @ApiImplicitParam(name = "token", value = "token值", required = true)
    @PostMapping("login2")
    public Map<String, Object> loginByMath2(String token,  @RequestBody Users user) {
        System.out.println("in controller-->token=" + token);

        Users loginUser = null;
        try {

            if(!checkValidateCode(token,user.getValidateCode())){
                return Json.fail("验证码不正确！");
            }

            System.out.println("验证码验证成功！");
            System.out.println("username=" + user.getUsername());
            System.out.println("password=" + user.getPassword());

            loginUser = usersService.login(user.getUsername(), user.getPassword());
            if (loginUser != null) {
                return Json.success(loginUser, "登录成功!");
            }
            return Json.fail("登录失败!");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("登录失败!");
        }
    }

    @PostMapping("reg")
    public Map<String,Object> reg(String token,@RequestBody Users user){
        //Users regUser = null;
        try{
            //检查验证码？
            if(!checkValidateCode(token,user.getValidateCode())){
                return Json.fail("验证码不正确！");
            }

            usersService.save(user);
            return Json.success(null,"注册成功！");
        }
        catch(Exception ex){
            ex.printStackTrace();
            return Json.fail("注册失败！");
        }
    }

}
