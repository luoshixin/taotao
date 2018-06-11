package com.taotao.service.impl;

import com.taotao.common.vo.ZTree;
import com.taotao.mapper.TbItemCatMapper;
import com.taotao.pojo.TbItem;
import com.taotao.pojo.TbItemCat;
import com.taotao.pojo.TbItemCatExample;
import com.taotao.service.ItemCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemCatServiceImpl implements ItemCatService{

    @Autowired
    private TbItemCatMapper itemCatMapper;

    @Override
    public List<ZTree> findItemCats(Long parentId) throws Exception {
        TbItemCatExample example = new TbItemCatExample();
        TbItemCatExample.Criteria criteria = example.createCriteria();
        criteria.andParentIdEqualTo(parentId);
        List<TbItemCat> itemCatList = itemCatMapper.selectByExample(example);
        List<ZTree> zTreeList = new ArrayList<>();
        for (TbItemCat itemCat : itemCatList){
            ZTree zTree = new ZTree();
            zTree.setId(String.valueOf(itemCat.getId()));
            zTree.setpId(String.valueOf(itemCat.getParentId()));
            zTree.setName(itemCat.getName());

            zTreeList.add(zTree);
        }
        return zTreeList;
    }
}
