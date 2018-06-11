package com.taotao.service.impl;

import com.taotao.common.utils.FtpUtil;
import com.taotao.common.utils.IDUtils;
import com.taotao.service.FileService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class FileServiceImpl implements FileService {

    @Value("${ftp.address}")
    private String ftpAddress;
    @Value("${ftp.port}")
    private Integer ftpPort;
    @Value("${ftp.userName}")
    private String ftpUserName;
    @Value("${ftp.passWord}")
    private String ftpPassWord;
    @Value("${ftp.basePath}")
    private String ftpBasePath;
    @Value("${ftp.imageBasePath}")
    private String ftpImageBasePath;


    @Override
    public String saveImage(MultipartFile multipartFile) throws Exception {
        if (null == multipartFile || multipartFile.isEmpty()) {
            return null;
        }

        String originalFilename = multipartFile.getOriginalFilename();
        String ext = originalFilename.substring(originalFilename.lastIndexOf("."));

        String imageName = IDUtils.genImageName();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
        String filePath = sdf.format(new Date());
        // 由于是后台管理系统，真是线上环境也不会用ftp所以就不加入ftp连接池
        FtpUtil.uploadFile(ftpAddress, ftpPort, ftpUserName, ftpPassWord,
                ftpBasePath, filePath, imageName + ext, multipartFile.getInputStream());

        return ftpImageBasePath + filePath + "/" + imageName + ext;
    }
}
