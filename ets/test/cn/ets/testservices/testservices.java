package cn.ets.testservices;

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
}
