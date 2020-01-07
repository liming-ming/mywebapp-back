package com.hbgc.springbootdemo.controller;


import com.hbgc.springbootdemo.domain.OnlineCode;
import com.hbgc.springbootdemo.json.Json;
import com.hbgc.springbootdemo.util.MyUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;


@RestController
@RequestMapping("onlinecode")
public class OnlineCodeController extends BaseController{

    @Value("${onlinecode.win.workPath}")
    private String workWinPath;

    @Value("${onlinecode.linux.workPath}")
    private String workLinuxPath;


    @PostMapping("runcode")
    public Map<String,Object> runCode(@RequestBody OnlineCode code){

        try{
            System.out.println("类名"+code.getClassName());
            System.out.println("----源代码-----\n"+code.getSourceCode());
            OnlineCode resultCode;
            if("windows".equals(MyUtils.getOperateSysName())) {
                resultCode = MyUtils.compileAndRunOnlineCodeOnWindow(workWinPath, code.getClassName(), code.getSourceCode());
            }else{
                resultCode = MyUtils.compileAndRunOnlineCodeOnLinux(workLinuxPath, code.getClassName(), code.getSourceCode());
            }
            return Json.success(resultCode,"执行成功！");

        }
        catch(Exception ex){

            ex.printStackTrace();
            return Json.fail("执行发生错误！");
        }
    }
}
