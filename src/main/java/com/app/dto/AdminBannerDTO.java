package com.app.dto;

import java.util.Objects;

public class AdminBannerDTO {
    
    private Long id;
    private Long adminId;
    private Long adminBannerId;
    private String adminBannerStart;
    private String adminBannerEnd;
    private String adminBannerTitle;
    private String adminBannerType;
    private String adminBannerImage;
    
    public AdminBannerDTO() {;}

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

    public Long getAdminBannerId() {
        return adminBannerId;
    }

    public void setAdminBannerId(Long adminBannerId) {
        this.adminBannerId = adminBannerId;
    }

    public String getAdminBannerStart() {
        return adminBannerStart;
    }

    public void setAdminBannerStart(String adminBannerStart) {
        this.adminBannerStart = adminBannerStart;
    }

    public String getAdminBannerEnd() {
        return adminBannerEnd;
    }

    public void setAdminBannerEnd(String adminBannerEnd) {
        this.adminBannerEnd = adminBannerEnd;
    }

    public String getAdminBannerTitle() {
        return adminBannerTitle;
    }

    public void setAdminBannerTitle(String adminBannerTitle) {
        this.adminBannerTitle = adminBannerTitle;
    }

    public String getAdminBannerType() {
        return adminBannerType;
    }

    public void setAdminBannerType(String adminBannerType) {
        this.adminBannerType = adminBannerType;
    }

    public String getAdminBannerImage() {
        return adminBannerImage;
    }

    public void setAdminBannerImage(String adminBannerImage) {
        this.adminBannerImage = adminBannerImage;
    }

    @Override
    public String toString() {
        return "AdminBannerDTO [id=" + id + ", adminId=" + adminId + ", adminBannerId=" + adminBannerId
                + ", adminBannerStart=" + adminBannerStart + ", adminBannerEnd=" + adminBannerEnd
                + ", adminBannerTitle=" + adminBannerTitle + ", adminBannerType=" + adminBannerType
                + ", adminBannerImage=" + adminBannerImage + "]";
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
        AdminBannerDTO other = (AdminBannerDTO) obj;
        return Objects.equals(id, other.id);
    }
}
