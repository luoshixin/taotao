package com.taotao.service;

import org.springframework.web.multipart.MultipartFile;

public interface FileService {
    public String saveImage(MultipartFile multipartFile) throws Exception;
}
