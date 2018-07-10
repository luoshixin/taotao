package com.taotao.rest.service.imp;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.common.utils.JsonUtils;
import com.taotao.mapper.TbContentMapper;
import com.taotao.pojo.TbContent;
import com.taotao.pojo.TbContentExample;
import com.taotao.rest.dao.JedisClient;
import com.taotao.rest.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ContentServiceImpl implements ContentService {

    @Autowired
    private TbContentMapper contentMapper;


    @Autowired
    private JedisClient jedisClient;

    @Value("${CONSTACT.INDEX_CONTENT_REDIS_KEY}")
    private String INDEX_CONTENT_REDIS_KEY;

    @Override
    public List<TbContent> getContentList(long categoryId) throws Exception {

        // 从缓存中获取内容
        try{
             String contestListStr = jedisClient.hget(INDEX_CONTENT_REDIS_KEY, categoryId + "");
            System.out.println(INDEX_CONTENT_REDIS_KEY + "从缓存中取出的数据：" + contestListStr);

             if (contestListStr != null && !"".equals(contestListStr)){
                 List<TbContent> tbContentList = JsonUtils.jsonToList(contestListStr, TbContent.class);
                 return tbContentList;
             }
        }catch (Exception e){
            e.printStackTrace();
            // 出现异常在这里发送邮件或者短信给运维
        }


        TbContentExample example = new TbContentExample();
        TbContentExample.Criteria criteria = example.createCriteria();
        criteria.andCategoryIdEqualTo(categoryId);
        List<TbContent> contentList = contentMapper.selectByExample(example);


        // 向缓存中存数据
        try{
            String contentListStr = JsonUtils.objectToJson(contentList);
            System.out.println("向缓存中加入的数据：" + contentListStr);
            jedisClient.hset(INDEX_CONTENT_REDIS_KEY, categoryId+"", contentListStr);
        }catch (Exception e){
            e.printStackTrace();
            // 出现异常在这里发送邮件或者短信给运维
        }


         return contentList;
    }
}
