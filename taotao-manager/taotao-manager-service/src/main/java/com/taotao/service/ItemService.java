package com.taotao.service;

import com.github.pagehelper.PageInfo;
import com.taotao.pojo.TbItem;

import java.util.List;

public interface ItemService {
    public PageInfo findItems(Integer page, Integer pageSize) throws Exception;
    public void saveItem(TbItem item, String describe) throws Exception;
    public void saveItemDescribe(Long itemId, String describe) throws Exception;
}
