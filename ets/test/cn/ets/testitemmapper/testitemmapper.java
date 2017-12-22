package cn.ets.testitemmapper;

import java.util.Iterator;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ets.pojo.*;
import com.ets.mapper.ItemMapper;

public class testitemmapper {
	private ApplicationContext context=null;
	@Before
	public void init(){
		context=new ClassPathXmlApplicationContext("spring/spring_bean.xml");
	}
	@Test
	public void testgetall(){
		ItemMapper ip=(ItemMapper) context.getBean("itemMapper");
		List<Item> i=ip.getbytitle("");
for (Iterator iterator = i.iterator(); iterator.hasNext();) {
	Item item = (Item) iterator.next();
	System.out.println(item.getTitle());
}
	}
	
	
	@Test
	public void testgetalls(){
		ItemMapper ip=(ItemMapper) context.getBean("itemMapper");
//		Item i=ip.selectByPrimaryKey(1l);
//		System.out.println(i.getTitle()+i.getItemId());
		List<Item> i=ip.getall();
for (Iterator iterator = i.iterator(); iterator.hasNext();) {
	Item item = (Item) iterator.next();
	System.out.println(item.getItemId());
}
	}
	
}
