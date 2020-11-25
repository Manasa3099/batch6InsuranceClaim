package com.insurance.claim.service;

import java.util.List;

import com.insurance.claim.dto.Policy;
import com.insurance.claim.dto.PolicyDetails;
import com.insurance.claim.exception.PolicyNotFoundException;

public interface PolicyService {
	List<Policy> getPolicyList();

	boolean isPolicyNumber(long policyNumber);

	int insertPolicyDetails(PolicyDetails details) throws PolicyNotFoundException;

	List<PolicyDetails> getPolicyDetails(long policyNumber);

	List<Policy> viewPolicies(long accountNumber);
	
	List<Policy> viewInsuredPolicy(String userName);
}
