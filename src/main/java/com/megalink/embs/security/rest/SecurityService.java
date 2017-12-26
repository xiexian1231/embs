package com.megalink.embs.security.rest;

//import java.util.*;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
//import com.megalink.embs.model.Authority;
//import com.megalink.embs.model.Role;
import com.megalink.embs.model.User;
//import com.megalink.embs.security.service.RoleService;
import com.megalink.embs.security.service.UserService;

@Controller
@RequestMapping("/user")
public class SecurityService {

	@Autowired
	private UserService userService;

	// @Autowired
	// private RoleService roleService;

	@RequestMapping("/login")
	public @ResponseBody String login(HttpServletRequest request) {
		String force = request.getParameter("force");
		String userInfo = request.getParameter("user");
		JSONObject jsonObj = JSONObject.parseObject(userInfo);
		User user = new User();
		user.setAccount(jsonObj.getString("username"));
		user.setPassword(jsonObj.getString("password"));
		String msg = userService.login(user, force);
		return msg;
	}

	@RequestMapping(value = "/logout")
	public void logout() {
		userService.logout();
	}

	@RequestMapping("/changePassword")
	public @ResponseBody String changePassword(HttpServletRequest request) {
		String userInfo = request.getParameter("user");
		JSONObject jsonObj = JSONObject.parseObject(userInfo);
		String username = jsonObj.getString("username").trim();
		String oldpwd = jsonObj.getString("oldpwd").trim();
		String newpwd = jsonObj.getString("newpwd").trim();
		String confirm = jsonObj.getString("confirm").trim();
		String msg = userService.changePassword(username, oldpwd, newpwd, confirm);
		return msg;
	}
	
	// @RequestMapping("/addUser")
	// public @ResponseBody String addUser(HttpServletRequest request) {
	// Set<Role> roles = userService.findRoles("xiexian");
	// Set<Authority> auths = userService.findPermissions("xiexian");
	// System.out.println(roles);
	// System.out.println(auths); return "VOV";

	/* 新增 */
	// List<User> list = new ArrayList<>(); User user = new User();
	// user.setAccount("admin"); user.setPassword("123"); User user1 = new
	// User(); user1.setAccount("wshao"); user1.setPassword("123"); User
	// user2 =
	// new User(); user2.setAccount("xiexian"); user2.setPassword("123");
	// User
	// user3 = new User(); user3.setAccount("wangsong");
	// user3.setPassword("123"); list.add(user); list.add(user1);
	// list.add(user2); list.add(user3); int rs = 0; for (int i = 0; i <
	// list.size(); i++) { userService.addUser(list.get(i)); rs++; } return
	// "" +
	// rs;

	/* 为用户设置角色 */
	// User user = userService.findUserByUserName("wangsong"); Role role =
	// roleService.findRoleByPrimarykey(4); Set<Role> roles = new
	// HashSet<>();
	// roles.add(role); user.setRoles(roles); userService.updateUser(user);
	// return "V";

	/* 新增角色 */
	// List<Role> list = new ArrayList<>();
	// Role role1 = new Role();
	// role1.setName("admin");
	// role1.setDescription("管理员");
	// Role role4 = new Role();
	// role4.setName("foreman");
	// role4.setDescription("领班");
	// Role role3 = new Role();
	// role3.setName("mechanic");
	// role3.setDescription("工作者");
	// Role role2 = new Role();
	// role2.setName("inspector");
	// role2.setDescription("检查者");
	// list.add(role1);
	// list.add(role4);
	// list.add(role3);
	// list.add(role2);
	// int rs = 0;
	// for (int i = 0; i < list.size(); i++) {
	// roleService.addRole(list.get(i));
	// rs++;
	// }
	// return "" + rs;
	// }

}