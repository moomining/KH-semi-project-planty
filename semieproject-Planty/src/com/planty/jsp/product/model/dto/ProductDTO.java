package com.planty.jsp.product.model.dto;

import java.util.List;

public class ProductDTO {
	
	private int pro_no;
	private int cate_no;
	private CategoryDTO category;
	private String par_id;
	private PartnerDTO partnerDTO;
	private String pro_name;
	private String pro_price;
	private String pro_content;
	private List<AttachmentDTO> attachmentList;
	
	public ProductDTO() {
	}

	public ProductDTO(int pro_no, int cate_no, CategoryDTO category, String par_id, PartnerDTO partnerDTO,
			String pro_name, String pro_price, String pro_content, List<AttachmentDTO> attachmentList) {
		super();
		this.pro_no = pro_no;
		this.cate_no = cate_no;
		this.category = category;
		this.par_id = par_id;
		this.partnerDTO = partnerDTO;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_content = pro_content;
		this.attachmentList = attachmentList;
	}

	public int getPro_no() {
		return pro_no;
	}

	public void setPro_no(int pro_no) {
		this.pro_no = pro_no;
	}

	public int getCate_no() {
		return cate_no;
	}

	public void setCate_no(int cate_no) {
		this.cate_no = cate_no;
	}

	public CategoryDTO getCategory() {
		return category;
	}

	public void setCategory(CategoryDTO category) {
		this.category = category;
	}

	public String getPar_id() {
		return par_id;
	}

	public void setPar_id(String par_id) {
		this.par_id = par_id;
	}

	public PartnerDTO getPartnerDTO() {
		return partnerDTO;
	}

	public void setPartnerDTO(PartnerDTO partnerDTO) {
		this.partnerDTO = partnerDTO;
	}

	public String getPro_name() {
		return pro_name;
	}

	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}

	public String getPro_price() {
		return pro_price;
	}

	public void setPro_price(String pro_price) {
		this.pro_price = pro_price;
	}

	public String getPro_content() {
		return pro_content;
	}

	public void setPro_content(String pro_content) {
		this.pro_content = pro_content;
	}

	public List<AttachmentDTO> getAttachmentList() {
		return attachmentList;
	}

	public void setAttachmentList(List<AttachmentDTO> attachmentList) {
		this.attachmentList = attachmentList;
	}

	

	
	
	
	

}