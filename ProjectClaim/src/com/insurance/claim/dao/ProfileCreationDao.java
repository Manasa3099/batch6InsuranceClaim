package com.insurance.claim.dao;

import com.insurance.claim.dto.UserRole;
import com.insurance.claim.exception.PolicyNotFoundException;

public interface ProfileCreationDao {
	public int profileCreation(UserRole user) throws PolicyNotFoundException;
}
