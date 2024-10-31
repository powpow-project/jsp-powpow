package com.app.vo;

import java.util.Objects;

public class HealthplusCommunityEventVO {
	
	private Long id;
	private Long adminId;
	private String hpCommunityEventTitle;
	private String hpCommunityEventImage;
	private String hpCommunityEventAddress;
	
	public HealthplusCommunityEventVO() {;}

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

	public String getHpCommunityEventTitle() {
		return hpCommunityEventTitle;
	}

	public void setHpCommunityEventTitle(String hpCommunityEventTitle) {
		this.hpCommunityEventTitle = hpCommunityEventTitle;
	}

	public String getHpCommunityEventImage() {
		return hpCommunityEventImage;
	}

	public void setHpCommunityEventImage(String hpCommunityEventImage) {
		this.hpCommunityEventImage = hpCommunityEventImage;
	}

	public String getHpCommunityEventAddress() {
		return hpCommunityEventAddress;
	}

	public void setHpCommunityEventAddress(String hpCommunityEventAddress) {
		this.hpCommunityEventAddress = hpCommunityEventAddress;
	}

	@Override
	public String toString() {
		return "HealthplusCommunityEventVO [id=" + id + ", adminId=" + adminId + ", hpCommunityEventTitle="
				+ hpCommunityEventTitle + ", hpCommunityEventImage=" + hpCommunityEventImage
				+ ", hpCommunityEventAddress=" + hpCommunityEventAddress + "]";
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
		HealthplusCommunityEventVO other = (HealthplusCommunityEventVO) obj;
		return Objects.equals(id, other.id);
	}
	
	

}
