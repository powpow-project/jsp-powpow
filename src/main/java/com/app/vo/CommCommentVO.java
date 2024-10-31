package com.app.vo;

import java.util.Objects;

public class CommCommentVO {
	
	private Long id;
	private Long commPostId;
	private Long memberId;
	private String commCommentContent;
	private int commCommentCreateAt;
	private int commCommentModifiedAt;
	
	public CommCommentVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCommPostId() {
		return commPostId;
	}

	public void setCommPostId(Long commPostId) {
		this.commPostId = commPostId;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getCommCommentContent() {
		return commCommentContent;
	}

	public void setCommCommentContent(String commCommentContent) {
		this.commCommentContent = commCommentContent;
	}

	public int getCommCommentCreateAt() {
		return commCommentCreateAt;
	}

	public void setCommCommentCreateAt(int commCommentCreateAt) {
		this.commCommentCreateAt = commCommentCreateAt;
	}

	public int getCommCommentModifiedAt() {
		return commCommentModifiedAt;
	}

	public void setCommCommentModifiedAt(int commCommentModifiedAt) {
		this.commCommentModifiedAt = commCommentModifiedAt;
	}

	@Override
	public String toString() {
		return "CommCommentVO [id=" + id + ", commPostId=" + commPostId + ", memberId=" + memberId
				+ ", commCommentContent=" + commCommentContent + ", commCommentCreateAt=" + commCommentCreateAt
				+ ", commCommentModifiedAt=" + commCommentModifiedAt + "]";
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
		CommCommentVO other = (CommCommentVO) obj;
		return Objects.equals(id, other.id);
	}

	
	
	

}
