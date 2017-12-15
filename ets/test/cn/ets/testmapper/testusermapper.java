package cn.ets.testmapper;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

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
		public void cccc(){
			UserMapper up=(UserMapper)ApplicationContext.getBean("userMapper");
			User u=new User();
			u.setUsername("aaa");
			u.setRealname("1234");
			up.updateByUsernameSelective(u);
		}
		
		@Test
		public void d(){
			UserMapper up=(UserMapper)ApplicationContext.getBean("userMapper");
			up.deleteByPrimaryKey(1l);
		}
		
		@Test
		public void testgetall(){
			UserMapper up=(UserMapper)ApplicationContext.getBean("userMapper");
		List<User> users=up.getall();
		for (Iterator iterator = users.iterator(); iterator.hasNext();) {
			User user = (User) iterator.next();
			System.out.println(user.getUsername());
		}
		}
}
