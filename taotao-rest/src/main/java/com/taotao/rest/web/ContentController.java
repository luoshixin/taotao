package com.taotao.rest.web;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.pojo.TbContent;
import com.taotao.rest.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/content")
@RestController
public class ContentController {

    @Autowired
    private ContentService contentService;

    @GetMapping("/list/{categoryId}")
    public Msg getContentList(@PathVariable long categoryId) throws Exception{
        List<TbContent> contentList = contentService.getContentList(categoryId);
        return ResultUtil.success(contentList);
    }

}
