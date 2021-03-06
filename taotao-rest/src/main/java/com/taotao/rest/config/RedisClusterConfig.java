package com.taotao.rest.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.RedisTemplate;
import redis.clients.jedis.HostAndPort;
import redis.clients.jedis.JedisCluster;

import java.util.HashSet;
import java.util.Set;

@Configuration
public class RedisClusterConfig {

    @Value("${spring.redis.cluster.nodes}")
    private String clusterNodes;

    @Bean
    public JedisCluster getJedisCluster() {
        // 截取集群节点
        String[] cluster = clusterNodes.split(",");
        // 创建set集合
        Set<HostAndPort> nodes = new HashSet<HostAndPort>();
        // 循环数组把集群节点添加到set集合中
        for (String node : cluster) {
            String[] host = node.split(":");
            //添加集群节点
            nodes.add(new HostAndPort(host[0], Integer.parseInt(host[1])));
        }
        JedisCluster jc = new JedisCluster(nodes);

        return jc;
    }
}
