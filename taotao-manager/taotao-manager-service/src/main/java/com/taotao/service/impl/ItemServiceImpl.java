package com.taotao.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.xml.internal.bind.v2.model.core.ID;
import com.taotao.common.utils.IDUtils;
import com.taotao.mapper.TbItemDescMapper;
import com.taotao.mapper.TbItemMapper;
import com.taotao.pojo.TbItem;
import com.taotao.pojo.TbItemDesc;
import com.taotao.pojo.TbItemExample;
import com.taotao.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Transactional(rollbackFor = Exception.class)
@Service
public class ItemServiceImpl implements ItemService{

    @Autowired
    private TbItemMapper itemMapper;
    @Autowired
    private TbItemDescMapper itemDescMapper;

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
    public void saveItem(TbItem item, String describe) throws Exception {
        // 补全字段
        item.setId(IDUtils.genItemId());
        item.setCid((long)1);
        item.setStatus((byte)1);
        item.setCreated(new Date());
        item.setUpdated(new Date());

        itemMapper.insert(item);

        saveItemDescribe(item.getId(), describe);

    }


    /**
     * 在这个方法上加@Transactional是没有用的，因为这个方法只在内部被调用没有在外部调用，声明式事务的原理是在用类对象调用某个方法的时候，动态代理中才会监听到调用个方法，如果是A方法调用b方法，就算b方法上加了开启事务的注解也没有用，因为没有东西回去检测它的存在
     * @param itemId
     * @param describe
     * @throws Exception
     */
    @Override
    public void saveItemDescribe(Long itemId, String describe) throws Exception {
        System.out.println("7商品ID：" + itemId);
        TbItemDesc itemDesc = new TbItemDesc();
        itemDesc.setItemId(itemId);
        itemDesc.setItemDesc(describe);
        itemDesc.setCreated(new Date());
        itemDesc.setCreated(new Date());

        itemDescMapper.insert(itemDesc);

        throw new Exception("异常");
    }


}
