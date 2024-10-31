package com.app.vo;

import java.security.Timestamp;
import java.util.Objects;

public class AdminCouponVO {
	
	private Long id;
    private Long adminId;
    private String adminCouponTitle;
    private String adminCouponType;
    private String adminCouponCode;
    private String adminCouponStart;
    private String adminCouponEnd;
    private String adminCouponContent;
    private int adminCouponQuantity;
    private double adminCouponDiscountRate;
    
    public AdminCouponVO() {;}

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

	public int getAdminCouponQuantity() {
		return adminCouponQuantity;
	}

	public void setAdminCouponQuantity(int adminCouponQuantity) {
		this.adminCouponQuantity = adminCouponQuantity;
	}

	public double getAdminCouponDiscountRate() {
		return adminCouponDiscountRate;
	}

	public void setAdminCouponDiscountRate(double adminCouponDiscountRate) {
		this.adminCouponDiscountRate = adminCouponDiscountRate;
	}

	@Override
	public String toString() {
		return "AdminCouponVO [id=" + id + ", adminId=" + adminId + ", adminCouponTitle=" + adminCouponTitle
				+ ", adminCouponType=" + adminCouponType + ", adminCouponCode=" + adminCouponCode
				+ ", adminCouponStart=" + adminCouponStart + ", adminCouponEnd=" + adminCouponEnd
				+ ", adminCouponContent=" + adminCouponContent + ", adminCouponQuantity=" + adminCouponQuantity
				+ ", adminCouponDiscountRate=" + adminCouponDiscountRate + "]";
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
		AdminCouponVO other = (AdminCouponVO) obj;
		return Objects.equals(id, other.id);
	}
    
}
