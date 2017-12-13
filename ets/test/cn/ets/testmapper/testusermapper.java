package cn.ets.testmapper;
import java.util.Date;

import org.junit.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ets.mapper.UserMapper;
import com.ets.pojo.User;

public class testusermapper {

	
private ApplicationContext ApplicationContext=null;
@Before
public	void init(){
	ApplicationContext=new ClassPathXmlApplicationContext("spring/spring_bean.xml");
}
		@Test
		public	void testuser(){
	UserMapper 	up=(UserMapper) ApplicationContext.getBean("userMapper");
		User u=up.selectByPrimaryKey(2l);
		
		System.out.println(u.getUsername());
	}
		@Test
	public void testinsertselective(){
			Date date=new Date();
	User user=new User();
		user.setUsername("¿œ∏Á");
		user.setPassword("999");
		user.setCreatedtime(date);
		user.setUpdatedtime(date);
		UserMapper up=(UserMapper)ApplicationContext.getBean("userMapper");
		up.insertSelective(user);
	}
		@Test
		public void c(){
			Date date=new Date();
			System.out.println(date);
		}
}
