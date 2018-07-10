package com.taotao.elasticsearch.dao;

import com.taotao.pojo.TbItem;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface ESDao {
    void addBatch(List<TbItem> tbItemList) throws Exception;
}
