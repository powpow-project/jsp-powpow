package com.app.dto;

import java.util.Objects;

public class MemberDTO {
	private Long id;            
	private String memberImage;
	private String memberNickname;
	private String memberEmail;
	private String memberName;
	private String memberPassword;
	private String memberPhone;
	private String memberAddress;
	private String searchKeyword;
	private char memberSmsCheck;      
    private char memberEmailCheck;
    
    public MemberDTO() {;}

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

	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
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

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public char getMemberSmsCheck() {
		return memberSmsCheck;
	}

	public void setMemberSmsCheck(char memberSmsCheck) {
		this.memberSmsCheck = memberSmsCheck;
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
				+ ", memberEmail=" + memberEmail + ", memberName=" + memberName + ", memberPassword=" + memberPassword
				+ ", memberPhone=" + memberPhone + ", memberAddress=" + memberAddress + ", searchKeyword="
				+ searchKeyword + ", memberSmsCheck=" + memberSmsCheck + ", memberEmailCheck=" + memberEmailCheck + "]";
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
