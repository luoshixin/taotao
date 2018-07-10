package com.taotao.elasticsearch.config;

import org.apache.http.HttpHost;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.config.AbstractFactoryBean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ESConfig extends AbstractFactoryBean {
    private static final Logger LOG = LoggerFactory.getLogger(ESConfig.class);

    @Value("${spring.data.elasticsearch.cluster-nodes}")
    private String clusterNodes;

    private RestHighLevelClient restHighLevelClient;

    @Override
    public void destroy() throws Exception {
        // 关闭Client
        if (restHighLevelClient != null) {
            restHighLevelClient.close();
        }
    }

    @Override
    public Class<RestHighLevelClient> getObjectType() {
        return RestHighLevelClient.class;
    }

    @Override
    public boolean isSingleton() {
        return false;
    }

    @Override
    protected Object createInstance() throws Exception {
        try {
            System.out.println("生成客户端RestHighLevelClient实例");
            restHighLevelClient = new RestHighLevelClient(
                    RestClient.builder(
                            new HttpHost(
                                    clusterNodes.split(":")[0],
                                    Integer.parseInt(clusterNodes.split(":")[1]),
                                    "http")));
        } catch (Exception e) {
            LOG.error(e.getMessage());
        }
        return restHighLevelClient;
    }

}
