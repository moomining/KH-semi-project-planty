package com.planty.jsp.review.model.dto;

public class AttachmentDTO {
	private int attachNo;
	private int reviewNo; //어떤 게시글에 올라간 파일인가요?
	private String orgName;
	private String savedName;
	private String savePath;
	private String fileType;
	private String thumPath;
	
	public AttachmentDTO() {}

	public AttachmentDTO(int attachNo, int reviewNo, String orgName, String savedName, String savePath, String fileType,
			String thumPath) {
		super();
		this.attachNo = attachNo;
		this.reviewNo = reviewNo;
		this.orgName = orgName;
		this.savedName = savedName;
		this.savePath = savePath;
		this.fileType = fileType;
		this.thumPath = thumPath;
	}

	public int getAttachNo() {
		return attachNo;
	}

	public void setAttachNo(int attachNo) {
		this.attachNo = attachNo;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getOrgName() {
		return orgName;
	}

	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}

	public String getSavedName() {
		return savedName;
	}

	public void setSavedName(String savedName) {
		this.savedName = savedName;
	}

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getThumPath() {
		return thumPath;
	}

	public void setThumPath(String thumPath) {
		this.thumPath = thumPath;
	}

	@Override
	public String toString() {
		return "AttachmentDTO [attachNo=" + attachNo + ", reviewNo=" + reviewNo + ", orgName=" + orgName
				+ ", savedName=" + savedName + ", savePath=" + savePath + ", fileType=" + fileType + ", thumPath="
				+ thumPath + "]";
	}
	
	
}
