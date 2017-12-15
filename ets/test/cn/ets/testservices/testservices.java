package cn.ets.testservices;

import java.util.Iterator;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ets.pojo.User;
import com.ets.services.IUserMapperService;

public class testservices {
	private ApplicationContext context=null;
	@Before
	public void init(){
		context=new ClassPathXmlApplicationContext("spring/spring_bean.xml");
	}
	@Test
	public void testservices(){
		IUserMapperService iu=(IUserMapperService)context.getBean("userService");
		User u=iu.selectByPrimaryKey(1l);
		System.out.println(u.getUsername());
	}
	@Test
	public void testgetall(){
		IUserMapperService iu=(IUserMapperService)context.getBean("userService");
		List<User> users=iu.getall();
		/*for (Iterator iterator = users.iterator(); iterator.hasNext();) {
			User user = (User) iterator.next();
			System.out.println(user.getUsername());
		}*/
		for (User user : users) {
			System.out.println(user.getUsername());
		}
	}
	
	@Test
	public void test1(){
		int user_id=0;
		IUserMapperService services=(IUserMapperService)context.getBean("userService");
		List<User> users=services.getall();
		for (User user : users) {
			if(user.getUsername().equals("aaa")){
			System.out.println(user.getUserId());}
		}
	}
	
	public void testupdatebyusernameselective(){
		User user=new User();
		user.setUsername("aaa");
	}
}
