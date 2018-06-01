package com.taotao;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

//@ComponentScan("com.taotao")
@SpringBootApplication
public class TaotaoManagerWebApplication {

	public static void main(String[] args) {

		SpringApplication.run(TaotaoManagerWebApplication.class, args);
	}
}
