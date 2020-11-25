package com.insurance.claim.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.insurance.claim.dto.UserRole;
import com.insurance.claim.exception.PolicyNotFoundException;
import com.insurance.claim.service.UserService;
import com.insurance.claim.service.UserServiceImpl;

@WebServlet({ "/ProfileCreationController", "/ProfileControl" })
public class ProfileCreationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProfileCreationController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserService user_service = new UserServiceImpl();

		String usrName = request.getParameter("user_name");
		String usrPass = request.getParameter("pass");
		String roleCode = request.getParameter("roleCode");

		UserRole newUser = new UserRole(usrName, usrPass, roleCode);
		int result=0;
		try {
			result = user_service.profileCreation(newUser);
		} catch (PolicyNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (result > 0) {
			response.sendRedirect("CreateProfile.jsp?successMsg=Profile Created Successfully!!");
		} else {
			response.sendRedirect("CreateProfile.jsp?errorMsg=Error While Creating Profile!!");
		}

	}
}
