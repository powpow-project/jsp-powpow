package com.app.dto;

import java.util.Objects;

/**
 * 
 */
public class CartDTO {
	
	private Long id;
	private Long productId;
    private String productName;
    private int productPrice;
    private String productImage;
    private String productDetail;
    private Long memberId;
    private String memberImage;
    private String memberNickname;
    private String memberEmail;
    private String memberPhone;
    private String memberAdress;
    private boolean memberSms; // SMS 수신 여부
    private boolean memberEmailCheck; // 이메일 확인 여부

    public CartDTO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
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
		return "CartDTO [id=" + id + ", productId=" + productId + ", productName=" + productName + ", productPrice="
				+ productPrice + ", productImage=" + productImage + ", productDetail=" + productDetail + ", memberId="
				+ memberId + ", memberImage=" + memberImage + ", memberNickname=" + memberNickname + ", memberEmail="
				+ memberEmail + ", memberPhone=" + memberPhone + ", memberAdress=" + memberAdress + ", memberSms="
				+ memberSms + ", memberEmailCheck=" + memberEmailCheck + "]";
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
		CartDTO other = (CartDTO) obj;
		return Objects.equals(id, other.id);
	}
    
    
}
