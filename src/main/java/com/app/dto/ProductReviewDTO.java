package com.app.dto;

import java.util.Objects;

public class ProductReviewDTO {
	private Long id;
	private Long productId;
	private Long memberId;
	private int productReviewStar;
	private String productReviewDate;
	private String productReviewContent;
	private String memberNickname;
	private String memberEmail;
	private String memberImage;
	
	public ProductReviewDTO() {;}

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

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public int getProductReviewStar() {
		return productReviewStar;
	}

	public void setProductReviewStar(int productReviewStar) {
		this.productReviewStar = productReviewStar;
	}

	public String getProductReviewDate() {
		return productReviewDate;
	}

	public void setProductReviewDate(String productReviewDate) {
		this.productReviewDate = productReviewDate;
	}

	public String getProductReviewContent() {
		return productReviewContent;
	}

	public void setProductReviewContent(String productReviewContent) {
		this.productReviewContent = productReviewContent;
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

	public String getMemberImage() {
		return memberImage;
	}

	public void setMemberImage(String memberImage) {
		this.memberImage = memberImage;
	}

	@Override
	public String toString() {
		return "ProductReviewDTO [id=" + id + ", productId=" + productId + ", memberId=" + memberId
				+ ", productReviewStar=" + productReviewStar + ", productReviewDate=" + productReviewDate
				+ ", productReviewContent=" + productReviewContent + ", memberNickname=" + memberNickname
				+ ", memberEmail=" + memberEmail + ", memberImage=" + memberImage + "]";
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
		ProductReviewDTO other = (ProductReviewDTO) obj;
		return Objects.equals(id, other.id);
	}
	
}
