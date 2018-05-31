package com.taotao.web;

import com.taotao.TaotaoManagerWebApplication;
import com.taotao.mapper.TbUserMapper;
import com.taotao.pojo.TbUser;
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
	private TbUserMapper tbUserMapper;

	@Test
	public void contextLoads() {
		List<TbUser> users = tbUserMapper.selectByExample(null);
		for (TbUser user : users){
			System.out.println("数据：" + user);
		}
	}

}
