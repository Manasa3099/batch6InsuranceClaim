package com.insurance.claim.exception;

public class PolicyNotFoundException extends Exception {
	public PolicyNotFoundException (String message) {
		super(message);
	}
}
