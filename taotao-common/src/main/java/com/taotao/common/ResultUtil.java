package com.taotao.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ResultUtil {
    /**
     * 请求成功返回
     * @param object
     * @return
     */
    public static Msg success(Object object){
        Msg msg=new Msg();
        msg.setCode(200);
        msg.setMsg("请求成功");
        msg.setData(object);
        return msg;
    }
    public static Msg success(){
        return success(null);
    }

    public static Msg pagingSuscess(List dataList, Integer currentPageNum, Integer pageSize, Integer totalPages, Boolean isHasPreviousPage, Boolean isHasNextPage){
        Map<String, Object> map = new HashMap<>();
        map.put("page", currentPageNum);
        map.put("pageSize", pageSize);
        map.put("totalPages", totalPages);
        map.put("isHasPreviousPage", isHasPreviousPage);
        map.put("isHasNextPage", isHasNextPage);
        map.put("data", dataList);
        return success(map);
    }

    public static Msg error(Integer code,String resultmsg){
        Msg msg=new Msg();
        msg.setCode(code);
        msg.setMsg(resultmsg);
        return msg;
    }

}
