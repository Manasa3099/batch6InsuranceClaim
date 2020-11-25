package com.insurance.claim.dao;

import java.util.List;

import com.insurance.claim.dto.ClaimQuestions;

public interface ClaimQuestionDao {

	List<ClaimQuestions> getAllClaimQuestions(long policyNumber);
	String getClaimQuestions(int questionId);
}
