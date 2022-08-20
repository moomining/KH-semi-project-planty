package com.planty.jsp.product.model.dto;

public class CategoryDTO {
	
	private int cate_no;
	private String cate_a;	// ��ǰ �з�
	
	public CategoryDTO() {
	}

	public CategoryDTO(int cate_no, String cate_a) {
		this.cate_no = cate_no;
		this.cate_a = cate_a;
	}

	public int getCate_no() {
		return cate_no;
	}

	public void setCate_no(int cate_no) {
		this.cate_no = cate_no;
	}

	public String getCate_a() {
		return cate_a;
	}

	public void setCate_a(String cate_a) {
		this.cate_a = cate_a;
	}
	
	
	
	

}