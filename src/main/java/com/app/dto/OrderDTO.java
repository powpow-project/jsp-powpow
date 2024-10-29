package com.app.dto;

import java.util.Objects;

public class OrderDTO {
	private Long id;
	private Long sellerId;
	private Long memberId;
	private Long productId;
	private String orderNumber;
	private String orderDate;
	private int productCount;
	private String sellerEmail;
	private String sellerPassword;
	private String sellerName;
	private String sellerPhone;
	private char sellerSms;
	private char sellerEmailcheck;
	private String memberImage;
	private String memberNickname;
	private String memberEmail;
	private String memberPhone;
	private String memberAddress;
	private char memberSms;
	private char memberEmailcheck;
	private String productName;
	private int productPrice;
	private String productImage;
	private String productCode;
	private String productType;
	private String productCategoryName;
	private String productDetail;
	private String productSubImage1;
	private String productSubImage2;
	private String productSubImage3;
	private int totalPrice;
	private int oneDayTotalCount;
	private int oneDayTotalPrice;
	
	public OrderDTO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getSellerId() {
		return sellerId;
	}

	public void setSellerId(Long sellerId) {
		this.sellerId = sellerId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public String getSellerEmail() {
		return sellerEmail;
	}

	public void setSellerEmail(String sellerEmail) {
		this.sellerEmail = sellerEmail;
	}

	public String getSellerPassword() {
		return sellerPassword;
	}

	public void setSellerPassword(String sellerPassword) {
		this.sellerPassword = sellerPassword;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getSellerPhone() {
		return sellerPhone;
	}

	public void setSellerPhone(String sellerPhone) {
		this.sellerPhone = sellerPhone;
	}

	public char getSellerSms() {
		return sellerSms;
	}

	public void setSellerSms(char sellerSms) {
		this.sellerSms = sellerSms;
	}

	public char getSellerEmailcheck() {
		return sellerEmailcheck;
	}

	public void setSellerEmailcheck(char sellerEmailcheck) {
		this.sellerEmailcheck = sellerEmailcheck;
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

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	public char getMemberSms() {
		return memberSms;
	}

	public void setMemberSms(char memberSms) {
		this.memberSms = memberSms;
	}

	public char getMemberEmailcheck() {
		return memberEmailcheck;
	}

	public void setMemberEmailcheck(char memberEmailcheck) {
		this.memberEmailcheck = memberEmailcheck;
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

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getProductCategoryName() {
		return productCategoryName;
	}

	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}

	public String getProductDetail() {
		return productDetail;
	}

	public void setProductDetail(String productDetail) {
		this.productDetail = productDetail;
	}

	public String getProductSubImage1() {
		return productSubImage1;
	}

	public void setProductSubImage1(String productSubImage1) {
		this.productSubImage1 = productSubImage1;
	}

	public String getProductSubImage2() {
		return productSubImage2;
	}

	public void setProductSubImage2(String productSubImage2) {
		this.productSubImage2 = productSubImage2;
	}

	public String getProductSubImage3() {
		return productSubImage3;
	}

	public void setProductSubImage3(String productSubImage3) {
		this.productSubImage3 = productSubImage3;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getOneDayTotalCount() {
		return oneDayTotalCount;
	}

	public void setOneDayTotalCount(int oneDayTotalCount) {
		this.oneDayTotalCount = oneDayTotalCount;
	}

	public int getOneDayTotalPrice() {
		return oneDayTotalPrice;
	}

	public void setOneDayTotalPrice(int oneDayTotalPrice) {
		this.oneDayTotalPrice = oneDayTotalPrice;
	}

	@Override
	public String toString() {
		return "OrderDTO [id=" + id + ", sellerId=" + sellerId + ", memberId=" + memberId + ", productId=" + productId
				+ ", orderNumber=" + orderNumber + ", orderDate=" + orderDate + ", productCount=" + productCount
				+ ", sellerEmail=" + sellerEmail + ", sellerPassword=" + sellerPassword + ", sellerName=" + sellerName
				+ ", sellerPhone=" + sellerPhone + ", sellerSms=" + sellerSms + ", sellerEmailcheck=" + sellerEmailcheck
				+ ", memberImage=" + memberImage + ", memberNickname=" + memberNickname + ", memberEmail=" + memberEmail
				+ ", memberPhone=" + memberPhone + ", memberAddress=" + memberAddress + ", memberSms=" + memberSms
				+ ", memberEmailcheck=" + memberEmailcheck + ", productName=" + productName + ", productPrice="
				+ productPrice + ", productImage=" + productImage + ", productCode=" + productCode + ", productType="
				+ productType + ", productCategoryName=" + productCategoryName + ", productDetail=" + productDetail
				+ ", productSubImage1=" + productSubImage1 + ", productSubImage2=" + productSubImage2
				+ ", productSubImage3=" + productSubImage3 + ", totalPrice=" + totalPrice + ", oneDayTotalCount="
				+ oneDayTotalCount + ", oneDayTotalPrice=" + oneDayTotalPrice + "]";
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
		OrderDTO other = (OrderDTO) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
}
