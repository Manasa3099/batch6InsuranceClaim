package com.insurance.claim.service;

import com.insurance.claim.dao.LoginDao;
import com.insurance.claim.dao.LoginDaoImpl;
import com.insurance.claim.dao.ProfileCreationDao;
import com.insurance.claim.dao.ProfileCreationDaoImpl;
import com.insurance.claim.dto.UserRole;
import com.insurance.claim.exception.PolicyNotFoundException;

public class UserServiceImpl implements UserService {

	LoginDao logDao = new LoginDaoImpl();
	ProfileCreationDao pDao = new ProfileCreationDaoImpl();

	public boolean validateUser(UserRole user) {
		return logDao.validateUser(user);
	}

	public String getRoleCode(UserRole user) {
		return logDao.getRoleCode(user);
	}

	@Override
	public int profileCreation(UserRole newUser) throws PolicyNotFoundException {
		return pDao.profileCreation(newUser);
	}
}
