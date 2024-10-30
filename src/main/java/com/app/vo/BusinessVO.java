package com.app.vo;

import java.util.Objects;

public class BusinessVO {
    private Long id;
    private String businessName;
    private String businessRepresentativeName;
    private String businessNumber;
    
    public BusinessVO() {;}

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
	public String toString() {
		return "BusinessVO [id=" + id + ", businessName=" + businessName + ", businessRepresentativeName="
				+ businessRepresentativeName + ", businessNumber=" + businessNumber + "]";
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
		BusinessVO other = (BusinessVO) obj;
		return Objects.equals(id, other.id);
	}

    
}
