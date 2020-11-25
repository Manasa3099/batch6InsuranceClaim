package com.insurance.claim.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.insurance.claim.dto.Policy;
import com.insurance.claim.dto.PolicyDetails;
import com.insurance.claim.exception.PolicyNotFoundException;
import com.insurance.claim.utils.ClaimQueries;
import com.insurance.claim.utils.JdbcUtility;

public class PolicyDetailsDaoImpl implements PolicyDetailsDao {

	@Override
	public int insertPolicyDetails(PolicyDetails details) throws PolicyNotFoundException{

		Connection con = JdbcUtility.getConnection();
		PreparedStatement ps = null;
		int result = 0;

		try {

			ps = con.prepareStatement(ClaimQueries.insertpolicy);
			ps.setLong(1, details.getPolicyNumber());
			ps.setInt(2, details.getQuestionId());
			ps.setString(3, details.getAnswer());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}

			try {
				ps.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public List<PolicyDetails> getPolicyDetails(long policyNumber) {

		PreparedStatement ps = null;
		ResultSet rs = null;

		Connection con = JdbcUtility.getConnection();
		List<PolicyDetails> pDetails = new ArrayList<PolicyDetails>();
		try {

			ps = con.prepareStatement(ClaimQueries.policydetails);
			ps.setLong(1, policyNumber);

			rs = ps.executeQuery();
			while (rs.next()) {
				long number = rs.getLong("POLICY_NUMBER");
				int qId = rs.getInt("QUESTION_ID");
				String answers = rs.getString("ANSWER");

				PolicyDetails p = new PolicyDetails(number, qId, answers);
				pDetails.add(p);
			}
//			System.out.println(pDetails);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}

			try {
				ps.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return pDetails;
	}

	@Override
	public List<Policy> viewInsuredPolicy(String userName) {

		PreparedStatement ps = null;
		Connection con = JdbcUtility.getConnection();
		List<Policy> pList = new ArrayList<>();

		String fetchInsuredPolicy = (ClaimQueries.fetchinsuredpolicy);
		try {

			ps = con.prepareStatement(fetchInsuredPolicy);
			ps.setString(1, userName);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Policy p = new Policy();
				p.setPolicy_number(rs.getLong("policy_number"));
				p.setPolicyPremium(rs.getDouble("policy_premium"));
				p.setAccountNumber(rs.getLong("account_number"));

				pList.add(p);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}

			try {
				con.close();
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}

		return pList;
	}
}
