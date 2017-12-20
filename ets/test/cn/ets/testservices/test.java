package cn.ets.testservices;

import java.lang.reflect.Array;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ets.pojo.Item;
import com.ets.pojo.User;
import com.ets.services.IItemmapperService;
import com.ets.services.IUserMapperService;

public class test {
	private ApplicationContext context=null;
	@Before
	public void init(){
		context=new ClassPathXmlApplicationContext("spring/spring_bean.xml");
	}
	@Test
	public void testservices(){
		IItemmapperService iu=(IItemmapperService)context.getBean("itemService");
		Item u=iu.selectByPrimaryKey(1l);
		System.out.println(u.getSellPoint());
	}
}
