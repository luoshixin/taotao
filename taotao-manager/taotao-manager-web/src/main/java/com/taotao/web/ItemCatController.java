package com.taotao.web;

import com.taotao.pojo.TbItemCat;
import com.taotao.service.ItemCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/nodes")
@RestController
public class ItemCatController {

    @Autowired
    private ItemCatService itemCatService;

    @RequestMapping("/{parentId}")
    public List<TbItemCat> findItemCat(@PathVariable Long parentId) throws Exception{
        return itemCatService.findItemCats(parentId);
    }
}
