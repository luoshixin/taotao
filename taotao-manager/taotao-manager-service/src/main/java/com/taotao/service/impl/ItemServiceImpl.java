package com.taotao.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.xml.internal.bind.v2.model.core.ID;
import com.taotao.common.utils.IDUtils;
import com.taotao.mapper.TbItemMapper;
import com.taotao.pojo.TbItem;
import com.taotao.pojo.TbItemExample;
import com.taotao.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class ItemServiceImpl implements ItemService{

    @Autowired
    private TbItemMapper itemMapper;

    @Override
    public PageInfo findItems(Integer page, Integer pageSize) throws Exception {
        if (pageSize == null){
            pageSize = 24;
        }

        PageHelper.startPage(page, pageSize);
        List<TbItem> itemList = itemMapper.selectByExample(null);
        PageInfo pageInfo = new PageInfo(itemList);

        return pageInfo;
    }

    @Override
    public void saveItem(TbItem item) throws Exception {
        // 补全字段
        item.setId(IDUtils.genItemId());
        item.setCid((long)1);
        item.setStatus((byte)1);
        item.setCreated(new Date());
        item.setUpdated(new Date());

        itemMapper.insert(item);
    }


}
