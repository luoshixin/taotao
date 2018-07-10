package com.taotao.rest.service.imp;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.mapper.TbItemCatMapper;
import com.taotao.pojo.TbItemCat;
import com.taotao.pojo.TbItemCatExample;
import com.taotao.rest.pojo.CatNode;
import com.taotao.rest.service.ItemCatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemCatServiceIml implements ItemCatService {

    @Autowired
    private TbItemCatMapper itemCatMapper;

    @Override
    public Msg getItemCatList() throws Exception {
        Msg msg = ResultUtil.success(getCatList(0L));
        return msg;
    }

    private List<?> getCatList(Long parentId){

        TbItemCatExample example = new TbItemCatExample();
        TbItemCatExample.Criteria criteria = example.createCriteria();
        criteria.andParentIdEqualTo(parentId);
        List<TbItemCat> itemCatList = itemCatMapper.selectByExample(example);

        int count = 0;
        List catNodeList = new ArrayList<>();
        for (TbItemCat itemCat : itemCatList){

            if (itemCat.getIsParent()) {
                CatNode catNode = new CatNode();
                if (parentId == 0) {
                    catNode.setName("<a href='/products/" + itemCat.getId() + ".html'>" + itemCat.getName() + "</a>");
                } else {
                    catNode.setName(itemCat.getName());
                }
                catNode.setUrl("/products/" + itemCat.getId() + ".html");
                catNode.setItem(getCatList(itemCat.getId()));
                catNodeList.add(catNode);
            }else {
                catNodeList.add("/products/" + itemCat.getId() + ".html|" + itemCat.getName());
            }

            if (parentId == 0) {
                count++;
                if (count > 13) {
                    break;
                }
            }
        } // for end

        return catNodeList;
    }
}
