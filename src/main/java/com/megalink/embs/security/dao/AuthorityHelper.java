package com.megalink.embs.security.dao;

import java.util.Set;

import com.megalink.embs.model.Authority;

public interface AuthorityHelper {
	public Authority findRoleByPrimarykey(Integer id);

	public Set<Authority> findAllAuthority();

	public Integer addAuthority(Authority authority);

	public void delAuthority(Authority authority);

	public void updateAuthority(Authority authority);
}
