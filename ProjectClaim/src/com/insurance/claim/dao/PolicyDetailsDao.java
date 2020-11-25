package com.insurance.claim.dao;

import java.util.List;

import com.insurance.claim.dto.Policy;
import com.insurance.claim.dto.PolicyDetails;
import com.insurance.claim.exception.PolicyNotFoundException;

public interface PolicyDetailsDao  {
	int insertPolicyDetails(PolicyDetails details) throws PolicyNotFoundException;
	List<PolicyDetails> getPolicyDetails(long policyNumber);
	public List<Policy> viewInsuredPolicy(String userName);
}
