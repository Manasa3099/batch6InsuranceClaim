package com.insurance.claim.dao;

import java.util.List;

import com.insurance.claim.dto.Accounts;
import com.insurance.claim.dto.Claim;
import com.insurance.claim.dto.Policy;

public interface ClaimDao {
	List<Policy> getPolicyList();

	boolean checkPolicyNumber(long policyNumber);

	long insertClaimDetails(Claim claim);

	List<Claim> getAllClaims();

	public Claim getClaimDetails(long policyNumber);

	public List<Accounts> getHandlerPolicyDetails(String userRole);

	List<Policy> viewPolicies(long accountNumber);

	public List<Claim> getClaimHandlerCalim(String user_name);

	public List<Claim> getInsuredClaim(String user_name);
}
