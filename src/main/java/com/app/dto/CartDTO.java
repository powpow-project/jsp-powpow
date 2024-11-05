package com.app.dto;

import java.util.Objects;

/**
 * 
 */
public class CartDTO {
	
	private Long id;
	private Long memberId;
	private String memberImage;
	private String memberNickname;
	private String memberEmail;
	private String memberphone;
	private String memberAddress;
	private Long productId;
	private String productName;
	private int productPrice;
	private String productAge;
	private String productImage;
	private String productCode;
	private String productDate;
	private int productStock;
	private String productType;
	private String productCategoryName;
	private String productEditDate;
	private String productDetail;
	private String productSubImage1;
	private String productSubImage2;
	private String productSubImage3;
	
	public CartDTO() {;}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getMemberphone() {
		return memberphone;
	}
	public void setMemberphone(String memberphone) {
		this.memberphone = memberphone;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
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
	public String getProductAge() {
		return productAge;
	}
	public void setProductAge(String productAge) {
		this.productAge = productAge;
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
	public String getProductDate() {
		return productDate;
	}
	public void setProductDate(String productDate) {
		this.productDate = productDate;
	}
	public int getProductStock() {
		return productStock;
	}
	public void setProductStock(int productStock) {
		this.productStock = productStock;
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
	public String getProductEditDate() {
		return productEditDate;
	}
	public void setProductEditDate(String productEditDate) {
		this.productEditDate = productEditDate;
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
	
	@Override
	public String toString() {
		return "CartDTO [id=" + id + ", memberId=" + memberId + ", memberImage=" + memberImage + ", memberNickname="
				+ memberNickname + ", memberEmail=" + memberEmail + ", memberphone=" + memberphone + ", memberAddress="
				+ memberAddress + ", productId=" + productId + ", productName=" + productName + ", productPrice="
				+ productPrice + ", productAge=" + productAge + ", productImage=" + productImage + ", productCode="
				+ productCode + ", productDate=" + productDate + ", productStock=" + productStock + ", productType="
				+ productType + ", productCategoryName=" + productCategoryName + ", productEditDate=" + productEditDate
				+ ", productDetail=" + productDetail + ", productSubImage1=" + productSubImage1 + ", productSubImage2="
				+ productSubImage2 + ", productSubImage3=" + productSubImage3 + "]";
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

    