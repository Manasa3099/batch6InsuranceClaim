package com.insurance.claim.service;

import java.util.List;

import com.insurance.claim.dao.ClaimDao;
import com.insurance.claim.dao.ClaimDaoImpl;
import com.insurance.claim.dao.ClaimQuestionDao;
import com.insurance.claim.dao.ClaimQuestionDaoImpl;
import com.insurance.claim.dao.ReportGenerationDao;
import com.insurance.claim.dao.ReportGenerationDaoImpl;
import com.insurance.claim.dto.Accounts;
import com.insurance.claim.dto.Claim;
import com.insurance.claim.dto.ClaimQuestions;

public class ClaimServiceImpl implements ClaimService {

	ClaimQuestionDao claim = new ClaimQuestionDaoImpl();
	ClaimDao cDao = new ClaimDaoImpl();
	ReportGenerationDao report = new ReportGenerationDaoImpl();

	@Override
	public List<ClaimQuestions> getAllClaimQuestions(long policyNumber) {
		return claim.getAllClaimQuestions(policyNumber);
	}

	@Override
	public long insertClaimDetails(Claim claim) {
		return cDao.insertClaimDetails(claim);
	}

	@Override
	public List<Claim> getAllClaims() {
		return cDao.getAllClaims();
	}

	@Override
	public List<Claim> getAllclaimReport() {
		return report.getAllclaimReport();
	}

	@Override
	public Claim getClaimDetails(long policyNumber) {
		return cDao.getClaimDetails(policyNumber);
	}

	@Override
	public String getClaimQuestions(int questionId) {
		return claim.getClaimQuestions(questionId);
	}

	@Override
	public List<Accounts> getHandlerPolicyDetails(String userRole) {
		return cDao.getHandlerPolicyDetails(userRole);
	}

	@Override
	public List<Claim> getClaimHandlerCalim(String user_name) {
		return cDao.getClaimHandlerCalim(user_name);
	}

	@Override
	public List<Claim> getInsuredClaim(String user_name) {
		return cDao.getInsuredClaim(user_name);
	}

}
