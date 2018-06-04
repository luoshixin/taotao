package com.taotao.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/page")
@Controller
public class PageController {

//    /**
//     * 首页
//     */
//    @RequestMapping("/index")
//    public String showIndex(){
//        return "index";
//    }


    /**
     * 页面跳转
     * @param pageName：页面名字
     */
    @RequestMapping("/{pageName}")
    public String showPage(@PathVariable String pageName){
        return pageName;
    }

}
