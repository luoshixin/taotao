package com.taotao.rest;

import com.taotao.pojo.TbContent;
import com.taotao.rest.dao.JedisClient;
import com.taotao.rest.dao.impl.JedisClientCluster;
import com.taotao.rest.service.ContentService;
import com.taotao.rest.service.ItemCatService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import redis.clients.jedis.JedisCluster;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TaotaoRestApplicationTests {

    @Autowired
    private JedisClient jedisClient;

    @Autowired
    private ItemCatService itemCatService;

    @Test
    public void contextLoads() {

        try {
            System.out.printf("数据：" + itemCatService.getItemCatList());
        } catch (Exception e) {
            e.printStackTrace();
            System.out.printf("测试异常：" + e);
        }
    }



    @Autowired
    private ContentService contentService;
    @Test
    public void testRedis(){

        try {
            List<TbContent> contentList =  contentService.getContentList(89l);
            if (contentList == null){
                System.out.println("取出的数据为null");
            }else {
                System.out.println("取出的数据为: " + contentList.size());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
