package com.insurance.claim.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.insurance.claim.dto.UserRole;
import com.insurance.claim.exception.PolicyNotFoundException;
import com.insurance.claim.utils.ClaimQueries;
import com.insurance.claim.utils.JdbcUtility;

public class ProfileCreationDaoImpl implements ProfileCreationDao {

	@Override
	public int profileCreation(UserRole user) throws PolicyNotFoundException {

		PreparedStatement ps = null;

		// Getting the connection
		Connection con = JdbcUtility.getConnection();
		int fetchResult = 0;
		String qury = (ClaimQueries.userrole);

		try {

			ps = con.prepareStatement(qury);
			ps.setString(1, user.getUserName());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getRoleCode());

			fetchResult = ps.executeUpdate();
//			con.commit();
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

		return fetchResult;
	}

}
