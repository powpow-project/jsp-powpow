package com.app.vo;

import java.util.Objects;

public class AdminVO {
    private Long id;
    private String adminEmail;
    private String adminPassword;
    private String adminName;
    private int adminAuth;
    
	public AdminVO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public int getAdminAuth() {
		return adminAuth;
	}

	public void setAdminAuth(int adminAuth) {
		this.adminAuth = adminAuth;
	}

	@Override
	public String toString() {
		return "AdminVO [id=" + id + ", adminEmail=" + adminEmail + ", adminPassword=" + adminPassword + ", adminName="
				+ adminName + ", adminAuth=" + adminAuth + "]";
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
		AdminVO other = (AdminVO) obj;
		return Objects.equals(id, other.id);
	}

	
}
