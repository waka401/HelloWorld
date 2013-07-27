package com.bupt.zk.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bupt.zk.dao.UserDao;
import com.bupt.zk.entity.User;

/**
 * @author ycsun E-mail:stevesun521@gmail.com
 * @version 创建时间：2013-7-17 下午10:18:54 类说明
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:/applicationContext.xml")
public class UserDaoTest extends AbstractJUnit4SpringContextTests {
	@Resource
	private UserDao userDao;
	@Test
	public void saveTest() {
		User user =new User();
		user.setUserName("孙元成");
		user.setPassWord("123");
		user.setEmail("stevesun521@gmail.com");
		user.setGender(1);
		user.setRole(0);
		userDao.save(user);
	}
	@Test
	public void isLogin(){
		String username="waka401";
		String password="chinasun";
		User user=userDao.getUser(username, password);
		System.out.println(user.getEmail());
	}

}
