package com.insurance.claim.dto;

public class ClaimQuestions {
	private int quesId;
	
	private String quesDesc;
	private String quesAns1;
	private String quesAns2;

	public ClaimQuestions() {
	}

	public ClaimQuestions(int quesId,  String quesDesc, String quesAns1, String quesAns2) {
		super();
		this.quesId = quesId;
		
		this.quesDesc = quesDesc;
		this.quesAns1 = quesAns1;
		this.quesAns2 = quesAns2;
	}

	public int getQuesId() {
		return quesId;
	}

	public void setQuesId(int quesId) {
		this.quesId = quesId;
	}

	

	public String getQuesDesc() {
		return quesDesc;
	}

	public void setQuesDesc(String quesDesc) {
		this.quesDesc = quesDesc;
	}

	public String getQuesAns1() {
		return quesAns1;
	}

	public void setQuesAns1(String quesAns1) {
		this.quesAns1 = quesAns1;
	}

	public String getQuesAns2() {
		return quesAns2;
	}

	public void setQuesAns2(String quesAns2) {
		this.quesAns2 = quesAns2;
	}

	@Override
	public String toString() {
		return "ClaimQuestions [quesId=" + quesId + ",  quesDesc=" + quesDesc
				+ ", quesAns1=" + quesAns1 + ", quesAns2=" + quesAns2 + "]";
	}
}
