package com.app.vo;

import java.util.Objects;

public class CommPostVO {

	private Long id;
	private Long memberId;
	private String commPostTitle;
	private String commPostContent;
	private int commPostCreateAt;
	private int commPostModifiedAt;
	private String commPostImage;
	
	public CommPostVO() {;}

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

	public String getCommPostTitle() {
		return commPostTitle;
	}

	public void setCommPostTitle(String commPostTitle) {
		this.commPostTitle = commPostTitle;
	}

	public String getCommPostContent() {
		return commPostContent;
	}

	public void setCommPostContent(String commPostContent) {
		this.commPostContent = commPostContent;
	}

	public int getCommPostCreateAt() {
		return commPostCreateAt;
	}

	public void setCommPostCreateAt(int commPostCreateAt) {
		this.commPostCreateAt = commPostCreateAt;
	}

	public int getCommPostModifiedAt() {
		return commPostModifiedAt;
	}

	public void setCommPostModifiedAt(int commPostModifiedAt) {
		this.commPostModifiedAt = commPostModifiedAt;
	}

	public String getCommPostImage() {
		return commPostImage;
	}

	public void setCommPostImage(String commPostImage) {
		this.commPostImage = commPostImage;
	}

	@Override
	public String toString() {
		return "CommPostVO [id=" + id + ", memberId=" + memberId + ", commPostTitle=" + commPostTitle
				+ ", commPostContent=" + commPostContent + ", commPostCreateAt=" + commPostCreateAt
				+ ", commPostModifiedAt=" + commPostModifiedAt + ", commPostImage=" + commPostImage + "]";
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
		CommPostVO other = (CommPostVO) obj;
		return Objects.equals(id, other.id);
	}
	
	
	
}
