package com.app.dto;

import java.util.Objects;

public class AdminNoticeDTO {
	
    private Long id;
    private Long adminId;
    private int adminNoticeNumber;
    private String adminNoticeTitle;
    private String adminNoticeContent;
    private String adminName;
    private String adminNoticeDate;
   
    public AdminNoticeDTO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getAdminId() {
		return adminId;
	}

	public void setAdminId(Long adminId) {
		this.adminId = adminId;
	}

	public int getAdminNoticeNumber() {
		return adminNoticeNumber;
	}

	public void setAdminNoticeNumber(int adminNoticeNumber) {
		this.adminNoticeNumber = adminNoticeNumber;
	}

	public String getAdminNoticeTitle() {
		return adminNoticeTitle;
	}

	public void setAdminNoticeTitle(String adminNoticeTitle) {
		this.adminNoticeTitle = adminNoticeTitle;
	}

	public String getAdminNoticeContent() {
		return adminNoticeContent;
	}

	public void setAdminNoticeContent(String adminNoticeContent) {
		this.adminNoticeContent = adminNoticeContent;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminNoticeDate() {
		return adminNoticeDate;
	}

	public void setAdminNoticeDate(String adminNoticeDate) {
		this.adminNoticeDate = adminNoticeDate;
	}

	@Override
	public String toString() {
		return "AdminNoticeDTO [id=" + id + ", adminId=" + adminId + ", adminNoticeNumber=" + adminNoticeNumber
				+ ", adminNoticeTitle=" + adminNoticeTitle + ", adminNoticeContent=" + adminNoticeContent
				+ ", adminName=" + adminName + ", adminNoticeDate=" + adminNoticeDate + "]";
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
		AdminNoticeDTO other = (AdminNoticeDTO) obj;
		return Objects.equals(id, other.id);
	}
    
    
}
