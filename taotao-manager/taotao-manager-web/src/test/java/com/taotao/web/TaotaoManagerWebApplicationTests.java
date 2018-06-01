package com.taotao.web;

import com.taotao.TaotaoManagerWebApplication;
import com.taotao.mapper.TbUserMapper;
import com.taotao.pojo.TbUser;
import com.taotao.service.ItemService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = TaotaoManagerWebApplication.class)
public class TaotaoManagerWebApplicationTests {

	@Autowired
	private ItemService itemService;

	@Test
	public void contextLoads() {
		itemService.findAllItems();
	}

}
