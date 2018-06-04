package com.taotao.web;

import com.github.pagehelper.PageInfo;
import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.pojo.TbItem;
import com.taotao.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RequestMapping("/item")
@RestController
public class ItemController {

    @Autowired
    private ItemService itemService;


    @GetMapping("/list")
    public Msg findItems(Integer page, Integer pageSize) throws Exception{
        PageInfo pageInfo = itemService.findItems(page, pageSize);

        return ResultUtil.pagingSuscess(pageInfo.getList(),
                pageInfo.getPageNum(),
                pageInfo.getPageSize(),
                pageInfo.getPages(),
                pageInfo.isHasPreviousPage(),
                pageInfo.isHasNextPage());
    }

}
