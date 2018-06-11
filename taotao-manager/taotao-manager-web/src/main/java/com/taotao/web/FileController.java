package com.taotao.web;

import com.taotao.common.Msg;
import com.taotao.common.ResultUtil;
import com.taotao.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping("/file")
@RestController
public class FileController {

    @Autowired
    private FileService fileService;


    /**
     * 上传图片
     * @return
     */
    @PostMapping("/uploadImage")
    public Msg uploadImage(@RequestParam(value = "file") MultipartFile multipartFile) throws Exception{
        String result = fileService.saveImage(multipartFile);

        if (result == null){
            return ResultUtil.success("上传失败");
        }

        return ResultUtil.success(result);
    }


}
