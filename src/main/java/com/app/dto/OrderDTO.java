package com.app.dto;

import java.util.Objects;

public class OrderDTO {
	private Long id;
	private Long memberId;
	private Long productId;
	private int odrderNumber;
	private String orderDate;
	private int productCount;
	
	public OrderDTO() {;}

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

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public int getOdrderNumber() {
		return odrderNumber;
	}

	public void setOdrderNumber(int odrderNumber) {
		this.odrderNumber = odrderNumber;
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

	@Override
	public String toString() {
		return "OrderDTO [id=" + id + ", memberId=" + memberId + ", productId=" + productId + ", odrderNumber="
				+ odrderNumber + ", orderDate=" + orderDate + ", productCount=" + productCount + "]";
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
