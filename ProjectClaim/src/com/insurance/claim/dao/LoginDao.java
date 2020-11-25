package com.insurance.claim.dao;

import com.insurance.claim.dto.UserRole;

public interface LoginDao {
	public boolean validateUser(UserRole user);
	public String getRoleCode(UserRole user);
}
