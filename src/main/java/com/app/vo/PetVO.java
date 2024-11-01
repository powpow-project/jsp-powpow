package com.app.vo;

import java.util.Objects;

public class PetVO {
	private Long id;
	private Long memberId;
	private String petKind;
	private String petImage;
	private String petName;
	private String petGender;
	private String petBreed;
	private String petBirth;
	private String petVet;
	private int petWeight;
	private boolean petNeuter;
	
	public PetVO() {;}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getMemberId() {
		return memberId;
	}

	public void setMemberId(Long memberId) {
		this.memberId = memberId;
	}

	public String getPetKind() {
		return petKind;
	}

	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}

	public String getPetImage() {
		return petImage;
	}

	public void setPetImage(String petImage) {
		this.petImage = petImage;
	}

	public String getPetName() {
		return petName;
	}

	public void setPetName(String petName) {
		this.petName = petName;
	}

	public String getPetGender() {
		return petGender;
	}

	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}

	public String getPetBreed() {
		return petBreed;
	}

	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}

	public String getPetBirth() {
		return petBirth;
	}

	public void setPetBirth(String petBirth) {
		this.petBirth = petBirth;
	}

	public String getPetVet() {
		return petVet;
	}

	public void setPetVet(String petVet) {
		this.petVet = petVet;
	}

	public int getPetWeight() {
		return petWeight;
	}

	public void setPetWeight(int petWeight) {
		this.petWeight = petWeight;
	}

	public boolean isPetNeuter() {
		return petNeuter;
	}

	public void setPetNeuter(boolean petNeuter) {
		this.petNeuter = petNeuter;
	}

	@Override
	public String toString() {
		return "PetVO [id=" + id + ", memberId=" + memberId + ", petKind=" + petKind + ", petImage=" + petImage
				+ ", petName=" + petName + ", petGender=" + petGender + ", petBreed=" + petBreed + ", petBirth="
				+ petBirth + ", petVet=" + petVet + ", petWeight=" + petWeight + ", petNeuter=" + petNeuter + "]";
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
		PetVO other = (PetVO) obj;
		return Objects.equals(id, other.id);
	}
	

	
}
