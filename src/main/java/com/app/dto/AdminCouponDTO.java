package com.app.dto;

import java.security.Timestamp;
import java.util.Objects;

public class AdminCouponDTO {
	
    private Long id; 
    private Long adminId; 
    private String adminCouponTitle; 
    private String adminCouponType; 
    private String adminCouponCode; 
    private String adminCouponStart; 
    private String adminCouponEnd;
    private String adminCouponContent; 
    private Integer adminCouponQuantity; 
    private Double adminCouponDiscountRate;
    private Timestamp createdAt;
    
    public AdminCouponDTO() {;}

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

	public String getAdminCouponTitle() {
		return adminCouponTitle;
	}

	public void setAdminCouponTitle(String adminCouponTitle) {
		this.adminCouponTitle = adminCouponTitle;
	}

	public String getAdminCouponType() {
		return adminCouponType;
	}

	public void setAdminCouponType(String adminCouponType) {
		this.adminCouponType = adminCouponType;
	}

	public String getAdminCouponCode() {
		return adminCouponCode;
	}

	public void setAdminCouponCode(String adminCouponCode) {
		this.adminCouponCode = adminCouponCode;
	}

	public String getAdminCouponStart() {
		return adminCouponStart;
	}

	public void setAdminCouponStart(String adminCouponStart) {
		this.adminCouponStart = adminCouponStart;
	}

	public String getAdminCouponEnd() {
		return adminCouponEnd;
	}

	public void setAdminCouponEnd(String adminCouponEnd) {
		this.adminCouponEnd = adminCouponEnd;
	}

	public String getAdminCouponContent() {
		return adminCouponContent;
	}

	public void setAdminCouponContent(String adminCouponContent) {
		this.adminCouponContent = adminCouponContent;
	}

	public Integer getAdminCouponQuantity() {
		return adminCouponQuantity;
	}

	public void setAdminCouponQuantity(Integer adminCouponQuantity) {
		this.adminCouponQuantity = adminCouponQuantity;
	}

	public Double getAdminCouponDiscountRate() {
		return adminCouponDiscountRate;
	}

	public void setAdminCouponDiscountRate(Double adminCouponDiscountRate) {
		this.adminCouponDiscountRate = adminCouponDiscountRate;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	@Override
	public String toString() {
		return "AdminCouponDTO [id=" + id + ", adminId=" + adminId + ", adminCouponTitle=" + adminCouponTitle
				+ ", adminCouponType=" + adminCouponType + ", adminCouponCode=" + adminCouponCode
				+ ", adminCouponStart=" + adminCouponStart + ", adminCouponEnd=" + adminCouponEnd
				+ ", adminCouponContent=" + adminCouponContent + ", adminCouponQuantity=" + adminCouponQuantity
				+ ", adminCouponDiscountRate=" + adminCouponDiscountRate + ", createdAt=" + createdAt + "]";
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
		AdminCouponDTO other = (AdminCouponDTO) obj;
		return Objects.equals(id, other.id);
	}
   
}
