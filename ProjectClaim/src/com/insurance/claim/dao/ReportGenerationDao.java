package com.insurance.claim.dao;

import java.util.List;

import com.insurance.claim.dto.Claim;

public interface ReportGenerationDao {
	List<Claim> getAllclaimReport();
}
