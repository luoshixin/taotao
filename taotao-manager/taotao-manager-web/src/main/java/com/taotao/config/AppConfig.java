package com.taotao.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class AppConfig extends WebMvcConfigurationSupport {

    /**
     * 配置静态访问资源
     * Spring Boot的自动配置是符合我们大多数需求的。
     * 在你既需要保留Spring Boot提供的便利，有需要增加自己的额外的配置的时候，
     * 可以定义一个配置类并继承WebMvcConfigurerAdapter,无需使用@EnableWebMvc注解。
     */
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
        super.addResourceHandlers(registry);
    }
}
