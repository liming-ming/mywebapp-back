package com.hbgc.springbootdemo.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import cn.hutool.core.lang.Console;
import cn.hutool.core.lang.UUID;
import cn.hutool.core.util.RandomUtil;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.hbgc.springbootdemo.json.Json;
import com.hbgc.springbootdemo.util.MyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.TimeUnit;


@RestController
@RequestMapping("commons")
public class CommonsController extends BaseController{

    @Autowired
    private DefaultKaptcha captchaProducer;


    @Value("${upload.win.path}")
    private String uploadWinPath;

    @Value("${upload.linux.path}")
    private String  uploadLinuxPath;


    //生成一个数学公式的验证码的接口
    @GetMapping("mathRandomCode")
    public void createMathExpressRandomCode(String token, HttpServletRequest request, HttpSession session, HttpServletResponse response){

        try{
            //想办法画出一个数学公式的图片，返回给浏览器。

            //生成图片的尺寸，宽度和高度
            int width = 80;
            int height = 40;

            //create the image
            BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
            Graphics g = image.getGraphics();
            // set the background color
            g.setColor(new Color(0xDCDCDC));
            g.fillRect(0, 0, width, height);
            // draw the border
            g.setColor(Color.black);
            g.drawRect(0, 0, width - 1, height - 1);
            // create a random instance to generate the codes
            Random rdm = new Random();
            // make some confusion
            for (int i = 0; i < 50; i++) {
                int x = rdm.nextInt(width);
                int y = rdm.nextInt(height);
                g.drawOval(x, y, 0, 0);
            }
            // generate a random code
            String verifyCode = MyUtils.generateVerifyCode(rdm);
            // "3*5"
            //把验证码存，计算结果保存到redis缓存;
            String rnd = ""+MyUtils.calc(verifyCode); //15

            System.out.println("存入缓存成功");
            g.setColor(new Color(0, 100, 0));
            g.setFont(new Font("Candara", Font.BOLD, 24));
            g.drawString(verifyCode + "=", 8, 24);
            g.dispose();

            //使用servlet的out对象浏览器绘制一张图片。
            OutputStream out = response.getOutputStream();
            ImageIO.write(image, "JPEG", out);

            //把结果存到redis缓存中
            redisTemplate.opsForValue().set(token, rnd, 30, TimeUnit.MINUTES);

            out.flush();
            out.close();
        }
        catch(Exception ex){
            ex.printStackTrace();
        }
    }


    //使用hutool工具类生成验证码，用于发博文时输入的验证码
    @GetMapping("hutoolRandomCodeImage")
    public Map<String, Object> createRandomCodeImage(String token, HttpServletRequest request, HttpSession session, HttpServletResponse response) {
        //response.setContentType("image/jpeg");
        System.out.println("token值是：" + token);
        try {
            //定义图形验证码的长和宽
            LineCaptcha lineCaptcha = CaptchaUtil.createLineCaptcha(100, 40, 4, 2);
            BufferedImage image = new BufferedImage(100, 40, BufferedImage.TYPE_INT_RGB);
            //图形验证码写出，可以写出到文件，也可以写出到流
            OutputStream out = response.getOutputStream();
            //lineCaptcha.write(out);

            //image = (BufferedImage) lineCaptcha.createImage(MyUtils.createRandomCode());
            image = (BufferedImage) lineCaptcha.createImage(lineCaptcha.getCode());
            ImageIO.write(image, "JPEG", out);

            //输出code
            Console.log("hutool生成的验证码是：" + lineCaptcha.getCode());
            //验证图形验证码的有效性，返回boolean值
            //把验证码保存到redis中,默认半个小时内有效。
            redisTemplate.opsForValue().set(token, lineCaptcha.getCode(), 10, TimeUnit.MINUTES);
            //System.out.println("验证结果：" + lineCaptcha.verify("1234"));
            System.out.println("验证码保存到redis成功！");

            out.flush();
            out.close();
            //重新生成验证码
            /*
            lineCaptcha.createCode();
            lineCaptcha.write("d:/line.png");
            //新的验证码
            Console.log(lineCaptcha.getCode());
            //验证图形验证码的有效性，返回boolean值
            lineCaptcha.verify("1234");
            */

            //return Json.success(null);
            return null;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }


    //Google的kaptacha组件生成验证码的动作。
    @GetMapping("kaptchaRandomCodeImage")
    public void defaultKaptcha(String token, HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) throws Exception {
        System.out.println("输出kaptcha验证码");
        byte[] captchaChallengeAsJpeg = null;
        //ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
        OutputStream jpegOutputStream = httpServletResponse.getOutputStream();
        try {
            //生产验证码字符串并保存到session中
            String createText = captchaProducer.createText();
            System.out.println("输出kaptcha验证码字符串是：" + createText);

            BufferedImage challenge = captchaProducer.createImage(createText);
            ImageIO.write(challenge, "JPEG", jpegOutputStream);

            redisTemplate.opsForValue().set(token, createText, 10, TimeUnit.MINUTES);
            System.out.println("验证码保存到redis成功！");

            jpegOutputStream.flush();
            jpegOutputStream.close();

        } catch (Exception e) {
            e.printStackTrace();
            return;
        }


    }


    //给注册手机发送验证码
    @GetMapping("mrcode")
    public Map<String, Object> sendMobileRandomCode(String mobile) {

        String randomCode = null;
        try {

            randomCode = RandomUtil.randomNumbers(6);
            //把这个验证码保存到session;做app这样是行不通的。

            String token = UUID.fastUUID().toString(true);

            MyUtils.sendMessageCodeByAliyun(randomCode, mobile);

            //把验证码保存到redis中,默认半个小时内有效。
            redisTemplate.opsForValue().set(token, randomCode, 30, TimeUnit.MINUTES);

            return Json.success(token, "验证码发送成功！");

        } catch (Exception e) {
            e.printStackTrace();
            return Json.fail("验证码发送失败！");
        }

    }


    //注册时给注册邮箱发送验证码动作
    @GetMapping("ercode")
    public Map<String, Object> sendEmailValidateCode(String toEmail, HttpServletRequest request, HttpSession session) {

        System.out.println("发送邮箱是：" + toEmail);
        try {

            String randomCode = RandomUtil.randomNumbers(6);
            MyUtils.sendEmailValidateCode(toEmail, randomCode);
            String token = UUID.fastUUID().toString(true);
            //把验证码保存到redis中,默认半个小时内有效。
            redisTemplate.opsForValue().set(token, randomCode, 30, TimeUnit.MINUTES);
            //使用了redis保存token，就不要再使用session保存了。
            System.out.println("本次生成的验证码是：" + randomCode);

            return Json.success(token, "验证码发送成功");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("验证码发送失败！");
        }
    }


    //如果是使用ElementUI的upload组件要求必须是post请求实现上传
    @PostMapping("upload")
    public Map<String, Object> loadFiles(MultipartFile file, HttpServletRequest request) {
        System.out.println("执行上传...");
        //Map<String, Object> map = new HashMap<String, Object>();
        //获得上传的路径
        //String path = request.getSession().getServletContext().getRealPath("/upload");

        String path = null;
        //先判断一下当前是什么操作

        if("windows".equals(MyUtils.getOperateSysName())){
            path = this.uploadWinPath;
        }else{
            path = this.uploadLinuxPath;
        }

        try {
            String uploadSuccessFileName = MyUtils.uploadFile(file, path);
            return Json.success(uploadSuccessFileName, "文件上传成功！");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("文件上传失败！");
        }
    }

    //实现文件下载
    @GetMapping("download")
    public Map<String, Object> downloadFileList(HttpServletRequest request) {
        String path = null;
        if("windows".equals(MyUtils.getOperateSysName())){
            path = uploadWinPath;
        }else{
            path = uploadLinuxPath;
        }

        java.util.List<String> filesNameList = new ArrayList<String>();
        try {
            filesNameList = MyUtils.getDownloadFileList(path);
            return Json.success(filesNameList, "获取下载文件列表成功！");
        } catch (Exception ex) {
            ex.printStackTrace();
            return Json.fail("获取下载文件列表失败！");
        }
    }






}
