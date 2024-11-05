package com.app.vo;

import java.util.Objects;

public class LikeVO {
	private Long id;
	private Long memberId;
	private Long productId;
	private Long commPostId;
	private Long hpCommunityPostId;
	
	public LikeVO() {;}

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

	public Long getCommPostId() {
		return commPostId;
	}

	public void setCommPostId(Long commPostId) {
		this.commPostId = commPostId;
	}

	public Long getHpCommunityPostId() {
		return hpCommunityPostId;
	}

	public void setHpCommunityPostId(Long hpCommunityPostId) {
		this.hpCommunityPostId = hpCommunityPostId;
	}

	@Override
	public String toString() {
		return "LikeVO [id=" + id + ", memberId=" + memberId + ", productId=" + productId + ", commPostId=" + commPostId
				+ ", hpCommunityPostId=" + hpCommunityPostId + "]";
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
		LikeVO other = (LikeVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
	
}
