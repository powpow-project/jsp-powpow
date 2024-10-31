package com.app.vo;

import java.util.Objects;

public class CancleProductVO {
	private Long id;
	private Long productId;
	private Long memberId;
	private String cancleProductDate;
	private int cancleCount;
	
	public CancleProductVO() {;}

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

	public String getCancleProductDate() {
		return cancleProductDate;
	}

	public void setCancleProductDate(String cancleProductDate) {
		this.cancleProductDate = cancleProductDate;
	}

	public int getCancleCount() {
		return cancleCount;
	}

	public void setCancleCount(int cancleCount) {
		this.cancleCount = cancleCount;
	}

	@Override
	public String toString() {
		return "CancleProductVO [id=" + id + ", productId=" + productId + ", memberId=" + memberId
				+ ", cancleProductDate=" + cancleProductDate + ", cancleCount=" + cancleCount + "]";
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
		CancleProductVO other = (CancleProductVO) obj;
		return Objects.equals(id, other.id);
	}

	
	 
}
