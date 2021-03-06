package cn.ets.testservices;

import java.lang.reflect.Array;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ets.pojo.Item;
import com.ets.pojo.Shipping;
import com.ets.pojo.User;
import com.ets.services.IItemmapperService;
import com.ets.services.IUserMapperService;
import com.ets.services.IshippingmapperServices;

public class test {
	private ApplicationContext context=null;
	@Before
	public void init(){
		context=new ClassPathXmlApplicationContext("spring/spring_bean.xml");
	}
	@Test
	public void testservices(){
		IItemmapperService iu=(IItemmapperService)context.getBean("itemService");
		List<Item> u=iu.getbytitle("����");
		for (Item item : u) {
			System.out.println(item.getItemId());
		}
	}
	@Test
	public void testshiping(){
		IshippingmapperServices iu=(IshippingmapperServices)context.getBean("shippingservices");
		List<Shipping> ships=iu.selectByuserId(22l);
		for (Shipping shipping : ships) {
			System.out.println(shipping.getReceiverAddress());
		}
	}
	@Test
	public void testservicess(){
		
		IItemmapperService iu=(IItemmapperService)context.getBean("itemService");
		long id=iu.getid("�������");
			System.out.println(id);
	}
}
