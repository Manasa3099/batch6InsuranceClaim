package com.insurance.claim.dto;

public class Policy {
	private long policy_number;
	private long accountNumber;
	private double policyPremium;

	public Policy() {
	}

	public Policy(long policy_number, long accountNumber, double policyPremium) {
		super();
		this.policy_number = policy_number;
		this.accountNumber = accountNumber;
		this.policyPremium = policyPremium;
	}

	public long getPolicy_number() {
		return policy_number;
	}

	public void setPolicy_number(long policy_number) {
		this.policy_number = policy_number;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}

	public double getPolicyPremium() {
		return policyPremium;
	}

	public void setPolicyPremium(double policyPremium) {
		this.policyPremium = policyPremium;
	}

	@Override
	public String toString() {
		return "Policy [policy=" + policy_number + ", accountNumber=" + accountNumber
				+ ", policyPremium=" + policyPremium + "]";
	}
}
