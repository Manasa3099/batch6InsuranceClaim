package com.insurance.claim.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.insurance.claim.dto.UserRole;
import com.insurance.claim.utils.ClaimQueries;
import com.insurance.claim.utils.JdbcUtility;

public class LoginDaoImpl implements LoginDao {

	PreparedStatement ps = null;
	ResultSet rs = null;

	@Override
	public boolean validateUser(UserRole user) {

		// Getting the connection
		Connection con = JdbcUtility.getConnection();

		boolean validateFlag = false;
		try {
			ps = con.prepareStatement(ClaimQueries.logIn);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());

			rs = ps.executeQuery();
			validateFlag = rs.next();
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
		return validateFlag;
	}

	@Override
	public String getRoleCode(UserRole user) {

		// getting the connection
		Connection con = JdbcUtility.getConnection();
		String result = null;

		try {

			ps = con.prepareStatement(ClaimQueries.role);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());

			rs = ps.executeQuery();
			rs.next();
			result = rs.getString("role_code");
//			System.out.println(result);
		} catch (Exception e) {
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

		return result;
	}
	 
}
