package com.app.dto;

import java.lang.invoke.MethodHandles.Lookup;
import java.util.Objects;
import java.util.Optional;

public class SellerDTO {
    private Long id;
    private Long businessId;
    private String sellerEmail;
    private String sellerPassword;
    private String sellerName;
    private String sellerPhone;
    private boolean sellerSms;
    private boolean sellerEmailCheck;
    
    public SellerDTO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
	public int hashCode() {
		return Objects.hash(businessId, id, sellerEmail, sellerEmailCheck, sellerName, sellerPassword, sellerPhone,
				sellerSms);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SellerDTO other = (SellerDTO) obj;
		return Objects.equals(businessId, other.businessId) && Objects.equals(id, other.id)
				&& Objects.equals(sellerEmail, other.sellerEmail) && sellerEmailCheck == other.sellerEmailCheck
				&& Objects.equals(sellerName, other.sellerName) && Objects.equals(sellerPassword, other.sellerPassword)
				&& Objects.equals(sellerPhone, other.sellerPhone) && sellerSms == other.sellerSms;
	}

	@Override
	public String toString() {
		return "SellerDTO [id=" + id + ", businessId=" + businessId + ", sellerEmail=" + sellerEmail
				+ ", sellerPassword=" + sellerPassword + ", sellerName=" + sellerName + ", sellerPhone=" + sellerPhone
				+ ", sellerSms=" + sellerSms + ", sellerEmailCheck=" + sellerEmailCheck + "]";
	}
	
	


    
	
    
    
    
    
    
	


	
	
}
