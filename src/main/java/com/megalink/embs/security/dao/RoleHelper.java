package com.megalink.embs.security.dao;

import java.util.Set;

import com.megalink.embs.model.Role;

public interface RoleHelper {
	public Role findRoleByPrimarykey(Integer id);

	public Set<Role> findAllRole();

	public Integer addRole(Role role);

	public void delRole(Role role);

	public void updateRole(Role role);
}
