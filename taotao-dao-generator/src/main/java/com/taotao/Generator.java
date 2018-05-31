package com.taotao;

import org.apache.ibatis.session.Configuration;
import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class Generator {


    public static void main(String[] args) throws Exception {
        try {
            List<String> warnings = new ArrayList<String>();
            boolean overwrite = true;
            //指定 逆向工程配置文件
            File configFile = new File("/Users/lsx/Desktop/workspace/taotao/taotao-dao-generator/src/main/resources/generatorConfig.xml");
            ConfigurationParser cp = new ConfigurationParser(warnings);
            org.mybatis.generator.config.Configuration config = cp.parseConfiguration(configFile);
            DefaultShellCallback callback = new DefaultShellCallback(overwrite);
            MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config,
                    callback, warnings);
            myBatisGenerator.generate(null);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
