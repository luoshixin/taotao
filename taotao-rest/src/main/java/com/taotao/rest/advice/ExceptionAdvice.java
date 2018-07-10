package com.taotao.rest.advice;


import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.common.utils.ExceptionUtil;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
@ResponseBody
public class ExceptionAdvice {

    /**
     * 运行时的错误都通过这里返回
     * @param e
     * @return
     */
    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public Msg handleException(Exception e){
        e.printStackTrace();
        return ResultUtil.error(HttpStatus.INTERNAL_SERVER_ERROR.value(), "服务器内部错误：" + e.getMessage() + " 详细错误：" + ExceptionUtil.getStackTrace(e));
    }

}
