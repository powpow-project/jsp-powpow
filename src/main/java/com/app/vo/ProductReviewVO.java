package com.app.vo;

import java.util.Objects;

public class ProductReviewVO {
	private Long id;
	private Long productId;
	private Long memberId;
	private int productReviewStar;
	private String productReviewDate;
	private String productReviewContent;
	
	public ProductReviewVO() {;}

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

	@Override
	public String toString() {
		return "ProductReviewVO [id=" + id + ", productId=" + productId + ", memberId=" + memberId
				+ ", productReviewStar=" + productReviewStar + ", productReviewDate=" + productReviewDate
				+ ", productReviewContent=" + productReviewContent + "]";
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
		ProductReviewVO other = (ProductReviewVO) obj;
		return Objects.equals(id, other.id);
	}
	
}
