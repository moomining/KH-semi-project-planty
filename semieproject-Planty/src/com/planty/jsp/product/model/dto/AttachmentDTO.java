package com.planty.jsp.product.model.dto;

public class AttachmentDTO {
	private int img_no;
	private int pro_no;
	private String p_path;
	private String file_name;	// 원래 파일명
	private String ser_file;	// 서버 파일명
	private String thum_file;	// 썸네일 파일명
	
	public AttachmentDTO() {
	}

	public AttachmentDTO(int img_no, int pro_no, String p_path, String file_name, String ser_file, String thum_file) {
		super();
		this.img_no = img_no;
		this.pro_no = pro_no;
		this.p_path = p_path;
		this.file_name = file_name;
		this.ser_file = ser_file;
		this.thum_file = thum_file;
	}

	public int getImg_no() {
		return img_no;
	}

	public void setImg_no(int img_no) {
		this.img_no = img_no;
	}

	public int getPro_no() {
		return pro_no;
	}

	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}

	public String getP_path() {
		return p_path;
	}

	public void setP_path(String p_path) {
		this.p_path = p_path;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getSer_file() {
		return ser_file;
	}

	public void setSer_file(String ser_file) {
		this.ser_file = ser_file;
	}

	public String getThum_file() {
		return thum_file;
	}

	public void setThum_file(String thum_file) {
		this.thum_file = thum_file;
	}
	
	
	

}
