package com.taotao.rest.service;

import com.taotao.common.Msg;

public interface RedisService {
    Msg delContent(long categoryId) throws Exception;
}
