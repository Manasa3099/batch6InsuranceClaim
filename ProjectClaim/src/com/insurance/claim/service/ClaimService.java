package com.insurance.claim.service;

import java.util.List;

import com.insurance.claim.dto.Accounts;
import com.insurance.claim.dto.Claim;
import com.insurance.claim.dto.ClaimQuestions;

public interface ClaimService {
	List<ClaimQuestions> getAllClaimQuestions(long policyNumber);

	long insertClaimDetails(Claim claim);

	List<Claim> getAllClaims();

	List<Claim> getAllclaimReport();

	public Claim getClaimDetails(long policyNumber);

	String getClaimQuestions(int questionId);

	List<Accounts> getHandlerPolicyDetails(String userRole);

	List<Claim> getClaimHandlerCalim(String user_name);

	List<Claim> getInsuredClaim(String user_name);
}
