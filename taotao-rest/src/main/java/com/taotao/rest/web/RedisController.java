package com.taotao.rest.web;

import com.taotao.common.Msg;
import com.taotao.rest.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RequestMapping("/cache/del")
@RestController
public class RedisController {

    @Autowired
    private RedisService redisService;

    @RequestMapping("/content/{categoryId}")
    public Msg desContent(@PathVariable long categoryId) throws Exception{
        return redisService.delContent(categoryId);
    }
}
