package com.app.vo;

import java.util.Objects;

public class MemberVO {

	private Long id;
	private String memberImage;
	private String memberNickname;
	private String memberEmail;
	private String memberPassword;
	private String memberPhone;
	private String memberAdress;
	private boolean memberSms;      // SMS 수신 여부
    private boolean memberEmailCheck; // 이메일 확인 여부
    
    public MemberVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}

	public String getMemberNickname() {
		return memberNickname;
	}

	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberPhone() {
		return memberPhone;
	}

	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}

	public String getMemberAdress() {
		return memberAdress;
	}

	public void setMemberAdress(String memberAdress) {
		this.memberAdress = memberAdress;
	}

	public boolean isMemberSms() {
		return memberSms;
	}

	public void setMemberSms(boolean memberSms) {
		this.memberSms = memberSms;
	}

	public boolean isMemberEmailCheck() {
		return memberEmailCheck;
	}

	public void setMemberEmailCheck(boolean memberEmailCheck) {
		this.memberEmailCheck = memberEmailCheck;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", memberImage=" + memberImage + ", memberNickname="
				+ memberNickname + ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword
				+ ", memberPhone=" + memberPhone + ", memberAdress=" + memberAdress + ", memberSms=" + memberSms
				+ ", memberEmailCheck=" + memberEmailCheck + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberVO other = (MemberVO) obj;
		return Objects.equals(id, other.id);
	}
     
}
