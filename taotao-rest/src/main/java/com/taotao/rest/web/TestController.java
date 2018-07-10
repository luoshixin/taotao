package com.taotao.rest.web;

import com.taotao.mapper.TbItemMapper;
import com.taotao.pojo.TbContent;
import com.taotao.pojo.TbItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class TestController {

    @Autowired
    private TbItemMapper itemMapper;

//    @RequestMapping("/test")
//    public List<TbItem> test() {
//        List<TbItem> itemList = itemMapper.selectByExample(null);
//        return itemList;
//    }

    @PostMapping("/test")
    public TbContent test1(@RequestBody TbContent tbContent) {
        return tbContent;
    }


}
