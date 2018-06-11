package com.taotao.web;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.common.vo.ZTree;
import com.taotao.pojo.TbItemCat;
import com.taotao.service.ItemCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/item/cat")
@RestController
public class ItemCatController {

    @Autowired
    private ItemCatService itemCatService;

    @GetMapping("/query")
    public List<ZTree> findItemCat(@RequestParam(defaultValue = "0") Long parentId) throws Exception{
        return itemCatService.findItemCats(parentId);
    }
}
