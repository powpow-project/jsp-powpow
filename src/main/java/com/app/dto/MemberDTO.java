package com.app.dto;

import java.util.Objects;

public class MemberDTO {
	private Long id;            
	private String memberImage;
	private String memberNickname;
	private String memberEmail;
	private String memberPassword;
	private String memberPhone;
	private String memberAddress;
	private String searchKeyword;
	private char memberSms;      
    private char memberEmailCheck;
    
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

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public String getSearchKeyWord() {
		return searchKeyword;
	}

	public void setSearchKeyWord(String searchKeyWord) {
		this.searchKeyword = searchKeyWord;
	}

	public char getMemberSms() {
		return memberSms;
	}

	public void setMemberSms(char memberSms) {
		this.memberSms = memberSms;
	}

	public char getMemberEmailCheck() {
		return memberEmailCheck;
	}

	public void setMemberEmailCheck(char memberEmailCheck) {
		this.memberEmailCheck = memberEmailCheck;
	}

	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", memberImage=" + memberImage + ", memberNickname=" + memberNickname
				+ ", memberEmail=" + memberEmail + ", memberPassword=" + memberPassword + ", memberPhone=" + memberPhone
				+ ", memberAddress=" + memberAddress + ", memberSms=" + memberSms + ", memberEmailCheck="
				+ memberEmailCheck + "]";
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
		MemberDTO other = (MemberDTO) obj;
		return Objects.equals(id, other.id);
	}
    
    
	

}
