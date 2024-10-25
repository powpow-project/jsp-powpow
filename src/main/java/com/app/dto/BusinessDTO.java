package com.app.dto;

import java.util.Objects;

public class BusinessDTO {
    private Long id;
    private String businessName;
    private String businessRepresentativeName;
    private String businessNumber;
    
     public BusinessDTO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
	public int hashCode() {
		return Objects.hash(businessName, businessNumber, businessRepresentativeName, id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BusinessDTO other = (BusinessDTO) obj;
		return Objects.equals(businessName, other.businessName) && Objects.equals(businessNumber, other.businessNumber)
				&& Objects.equals(businessRepresentativeName, other.businessRepresentativeName)
				&& Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "BusinessDTO [id=" + id + ", businessName=" + businessName + ", businessRepresentativeName="
				+ businessRepresentativeName + ", businessNumber=" + businessNumber + "]";
	}
     
     
}
