package com.app.vo;

import java.sql.Date;
import java.util.Objects;

public class AdminNoticeVO {
	
    private Long id;
    private Long adminId;
    private int adminNoticeNumber;
    private String adminNoticeTitle;
    private String adminNoticeContent;
    private String adminNoticeView;
    private String adminNoticeWriter;
    private Date adminNoticeDate;
    
    public AdminNoticeVO() {;}

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

	public String getAdminNoticeView() {
		return adminNoticeView;
	}

	public void setAdminNoticeView(String adminNoticeView) {
		this.adminNoticeView = adminNoticeView;
	}

	public String getAdminNoticeWriter() {
		return adminNoticeWriter;
	}

	public void setAdminNoticeWriter(String adminNoticeWriter) {
		this.adminNoticeWriter = adminNoticeWriter;
	}

	public Date getAdminNoticeDate() {
		return adminNoticeDate;
	}

	public void setAdminNoticeDate(Date adminNoticeDate) {
		this.adminNoticeDate = adminNoticeDate;
	}

	@Override
	public String toString() {
		return "AdminNoticeVO [id=" + id + ", adminId=" + adminId + ", adminNoticeNumber=" + adminNoticeNumber
				+ ", adminNoticeTitle=" + adminNoticeTitle + ", adminNoticeContent=" + adminNoticeContent
				+ ", adminNoticeView=" + adminNoticeView + ", adminNoticeWriter=" + adminNoticeWriter
				+ ", adminNoticeDate=" + adminNoticeDate + "]";
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
		AdminNoticeVO other = (AdminNoticeVO) obj;
		return Objects.equals(id, other.id);
	}
}
