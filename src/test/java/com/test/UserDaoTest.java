package com.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.megalink.embs.model.User;
import com.megalink.embs.security.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring.xml", "classpath:spring-mvc.xml",
		"classpath:spring-hibernate.xml" })
public class UserDaoTest {
	@SuppressWarnings("unused")
	@Autowired
	private UserService userService;

	@Test
	public void test() {
		User user = new User();
		user.setAccount("admin");
		user.setPassword("123");
		System.out.println(userService.addUser(user));
	}

}
