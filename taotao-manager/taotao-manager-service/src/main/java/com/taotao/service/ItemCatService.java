package com.taotao.service;

import com.taotao.common.vo.ZTree;
import com.taotao.pojo.TbItemCat;

import java.util.List;

public interface ItemCatService {
    /**
     * @param parentId: 父节点id
     */
    public List<ZTree> findItemCats(Long parentId) throws Exception;
}
