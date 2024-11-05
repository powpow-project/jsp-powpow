package com.app.dto;

import java.util.Objects;

public class SellerDTO {
    private Long id;
    private Long businessId;
    private String sellerEmail;
    private String sellerPassword;
    private String sellerName;
    private String sellerPhone;
    private char sellerSms;
    private char sellerEmailCheck;
    private String businessName;
    private String businessRepresentativeName;
    private String businessNumber;
    
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

	public char getSellerSms() {
		return sellerSms;
	}

	public void setSellerSms(char sellerSms) {
		this.sellerSms = sellerSms;
	}

	public char getSellerEmailCheck() {
		return sellerEmailCheck;
	}

	public void setSellerEmailCheck(char sellerEmailCheck) {
		this.sellerEmailCheck = sellerEmailCheck;
	}

	public String getBusinessName() {
		return businessName;
	}

	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}

	public String getBusinessRepresentativeName() {
		return businessRepresentativeName;
	}

	public void setBusinessRepresentativeName(String businessRepresentativeName) {
		this.businessRepresentativeName = businessRepresentativeName;
	}

	public String getBusinessNumber() {
		return businessNumber;
	}

	public void setBusinessNumber(String businessNumber) {
		this.businessNumber = businessNumber;
	}

	@Override
	public String toString() {
		return "SellerDTO [id=" + id + ", businessId=" + businessId + ", sellerEmail=" + sellerEmail
				+ ", sellerPassword=" + sellerPassword + ", sellerName=" + sellerName + ", sellerPhone=" + sellerPhone
				+ ", sellerSms=" + sellerSms + ", sellerEmailCheck=" + sellerEmailCheck + ", businessName="
				+ businessName + ", businessRepresentativeName=" + businessRepresentativeName + ", businessNumber="
				+ businessNumber + "]";
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
		SellerDTO other = (SellerDTO) obj;
		return Objects.equals(id, other.id);
	}
	
	
    
    
    
	


	
	
}
