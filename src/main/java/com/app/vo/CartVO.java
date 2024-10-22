package com.app.vo;

import java.util.Objects;

public class CartVO {
	private Long id;
	private Long MemberId;
	private Long ProductId;
	private Long OrderId;
	
	public CartVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getMemberId() {
		return MemberId;
	}

	public void setMemberId(Long memberId) {
		MemberId = memberId;
	}

	public Long getProductId() {
		return ProductId;
	}

	public void setProductId(Long productId) {
		ProductId = productId;
	}

	public Long getOrderId() {
		return OrderId;
	}

	public void setOrderId(Long orderId) {
		OrderId = orderId;
	}

	@Override
	public String toString() {
		return "CartVO [id=" + id + ", MemberId=" + MemberId + ", ProductId=" + ProductId + ", OrderId=" + OrderId
				+ "]";
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
		CartVO other = (CartVO) obj;
		return Objects.equals(id, other.id);
	}
	
	

}
