package com.insurance.claim.service;

import com.insurance.claim.dto.UserRole;
import com.insurance.claim.exception.PolicyNotFoundException;

public interface UserService {
	public boolean validateUser(UserRole user);

	public String getRoleCode(UserRole user);

	public int profileCreation(UserRole user) throws PolicyNotFoundException;
}
