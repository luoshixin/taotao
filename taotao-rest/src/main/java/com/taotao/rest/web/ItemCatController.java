package com.taotao.rest.web;

import com.taotao.common.Msg;
import com.taotao.common.utils.JsonUtils;
import com.taotao.rest.service.ItemCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ItemCatController {

    @Autowired
    private ItemCatService itemCatService;

    @GetMapping(value = "/itemcat/list", produces="text/html;charset=UTF-8")
    public String getItemCatList(String callback) throws Exception {
        Msg msg = itemCatService.getItemCatList();
        String json = JsonUtils.objectToJson(msg);
        String result = callback + "(" + json + ");";
        return result;
    }

}
