package com.megalink.embs.security.dao;

import java.util.Set;

import com.megalink.embs.model.Authority;
import com.megalink.embs.model.Role;
import com.megalink.embs.model.User;

public interface UserHelper {
	public User findUserByUserName(String username);

	public Set<Role> findRoles(String username);

	public Set<Authority> findPermissions(String username);

	public Integer addUser(User user);

	public void updateUser(User user);
}
