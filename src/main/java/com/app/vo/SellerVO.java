package com.app.vo;

import java.util.Objects;

public class SellerVO {
    private Long id;
    private Long adminId;
    private Long businessId;
    private String sellerEmail;
    private String sellerPassword;
    private String sellerName;
    private String sellerPhone;
    private boolean sellerSms;
    private boolean sellerEmailCheck;
    
    public SellerVO() {;}

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

	public Long getBusinessId() {
		return businessId;
	}

	public void setBusinessId(Long businessId) {
		this.businessId = businessId;
	}

	public String getSellerEmail() {
		return sellerEmail;
	}

	public void setSellerEmail(String sellerEmail) {
		this.sellerEmail = sellerEmail;
	}

	public String getSellerPassword() {
		return sellerPassword;
	}

	public void setSellerPassword(String sellerPassword) {
		this.sellerPassword = sellerPassword;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getSellerPhone() {
		return sellerPhone;
	}

	public void setSellerPhone(String sellerPhone) {
		this.sellerPhone = sellerPhone;
	}

	public boolean isSellerSms() {
		return sellerSms;
	}

	public void setSellerSms(boolean sellerSms) {
		this.sellerSms = sellerSms;
	}

	public boolean isSellerEmailCheck() {
		return sellerEmailCheck;
	}

	public void setSellerEmailCheck(boolean sellerEmailCheck) {
		this.sellerEmailCheck = sellerEmailCheck;
	}

	@Override
	public String toString() {
		return "SellerVO [id=" + id + ", adminId=" + adminId + ", businessId=" + businessId + ", sellerEmail="
				+ sellerEmail + ", sellerPassword=" + sellerPassword + ", sellerName=" + sellerName + ", sellerPhone="
				+ sellerPhone + ", sellerSms=" + sellerSms + ", sellerEmailCheck=" + sellerEmailCheck + "]";
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
		SellerVO other = (SellerVO) obj;
		return Objects.equals(id, other.id);
	}
    
    

}
