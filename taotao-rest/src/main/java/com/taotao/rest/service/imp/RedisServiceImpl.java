package com.taotao.rest.service.imp;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.rest.dao.JedisClient;
import com.taotao.rest.service.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service
public class RedisServiceImpl implements RedisService {

    @Value("${CONSTACT.INDEX_CONTENT_REDIS_KEY}")
    private String INDEX_CONTENT_REDIS_KEY;

    @Autowired
    private JedisClient jedisClient;

    @Override
    public Msg delContent(long categoryId) throws Exception{
        try {
            jedisClient.hdel(INDEX_CONTENT_REDIS_KEY, categoryId + "");
        }catch (Exception e){ // 关于redis 的异常就不向外抛了，在这里发邮件通知运维，除非外面统一异常处理那里也能发邮件
            e.printStackTrace();
            return ResultUtil.error(500, e.getMessage());
            // 向运维法邮件，告知这个异常
        }
        return ResultUtil.success();
    }
}
