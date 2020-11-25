package com.insurance.claim.service;

import java.util.List;

import com.insurance.claim.dao.ClaimDao;
import com.insurance.claim.dao.ClaimDaoImpl;
import com.insurance.claim.dao.PolicyDetailsDao;
import com.insurance.claim.dao.PolicyDetailsDaoImpl;
import com.insurance.claim.dto.Policy;
import com.insurance.claim.dto.PolicyDetails;
import com.insurance.claim.exception.PolicyNotFoundException;

public class PolicyServiceImpl implements PolicyService {

	ClaimDao cailmDao = new ClaimDaoImpl();
	PolicyDetailsDao pdao = new PolicyDetailsDaoImpl();

	@Override
	public List<Policy> getPolicyList() {

		return cailmDao.getPolicyList();
	}

	@Override
	public boolean isPolicyNumber(long policyNumber) {
		return cailmDao.checkPolicyNumber(policyNumber);
	}

	@Override
	public int insertPolicyDetails(PolicyDetails details) throws PolicyNotFoundException {
		return pdao.insertPolicyDetails(details);
	}

	@Override
	public List<PolicyDetails> getPolicyDetails(long policyNumber) {
		return pdao.getPolicyDetails(policyNumber);
	}

	@Override
	public List<Policy> viewPolicies(long accountNumber) {
		return cailmDao.viewPolicies(accountNumber);
	}

	@Override
	public List<Policy> viewInsuredPolicy(String userName) {
		return pdao.viewInsuredPolicy(userName);
	}
}
