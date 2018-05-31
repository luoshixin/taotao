import com.taotao.mapper.TbUserMapper;
import com.taotao.pojo.TbUser;
import org.junit.runner.RunWith;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Test {

    @Autowired
    private TbUserMapper tbUserMapper;


    @org.junit.Test
    public void test(){

        List<TbUser> users = tbUserMapper.selectByExample(null);
        for (TbUser user : users){
            System.out.println("数据：" + user);
        }
    }
}
