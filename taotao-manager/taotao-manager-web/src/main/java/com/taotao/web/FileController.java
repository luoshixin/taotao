package com.taotao.web;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("/file")
@RestController
public class FileController {

    /**
     * WangEditor上传图片
     * @return
     */
    @PostMapping("/uploadImages")
    public Msg uploadWangEditorImage(@RequestParam(value = "imgName") MultipartFile multipartFile){
        String mgUrls = "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3198611610,3108821463&fm=27&gp=0.jpg";
        return ResultUtil.success(mgUrls);
    }

}
