package com.insurance.claim.utils;

public class ClaimQueries {
	public static final String policy="select * from policy";
	
	public static final String claimpolicy="select * from claim where policy_number = ?";
	
	public static final String insertclaim="insert into claim values(claim_number_seq.nextval,?,?,?,?,?,?,?)";
	
	public static final String claimnumber="select claim_number_seq.nextval from dual";
	
	public static final String claim="select * from claim";
	
	public static final String accounts="select * from accounts where user_name=?";
	public static final String policyaccount="select * from policy where account_number=?";
	public static final String fetchuserclaim="select * from claim c \n" + "inner join policy p on c.policy_number = p.policy_number\n"
			+ "inner join accounts a on p.account_number = a.account_number \n" + "where a.user_name=?";
	
	public static final String fetchinsuredclaim="select * from claim c inner join policy p \n"
			+ "    on c.policy_number = p.policy_number\n" + "    inner join accounts a on\n"
			+ "    p.account_number = a.account_number \n" + "    where a.insured_name =?";
	
	public static final String claimques="select * from claim_questions where claim_type in "
			+ "(select claim_type from claim where policy_number=? ";
	
	public static final String quesdesc="select ques_desc from claim_questions where ques_id = ?";
	
	public static final String logIn="select * from user_role where user_name=? and password=?";
	
	public static final String role="select role_code from user_role where user_name=? and password=?";
	
	public static final String insertpolicy="insert into policy_details values(?,?,?)";
	
	public static final String policydetails="select * from policy_details where policy_number=?";
	
	public static final String fetchinsuredpolicy="select * from policy p inner join accounts a \r\n"
			+ "    on p.account_number = a.account_number where \r\n" + "    a.user_name=?";
	
	public static final String userrole="insert into user_role values(?,?,?)";
	

}
