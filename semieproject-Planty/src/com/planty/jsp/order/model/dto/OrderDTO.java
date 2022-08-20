package com.planty.jsp.order.model.dto;

import com.planty.jsp.product.model.dto.ProductDTO;

public class OrderDTO {
	
	private int proNo;
	private ProductDTO product;
	private int ordNo;
	private OrderDetailDTO orderDetail;
	private int amount;
	
	
	public OrderDTO() {}


	public OrderDTO(int proNo, ProductDTO product, int ordNo, OrderDetailDTO orderDetail, int amount) {
		super();
		this.proNo = proNo;
		this.product = product;
		this.ordNo = ordNo;
		this.orderDetail = orderDetail;
		this.amount = amount;
	}


	public int getProNo() {
		return proNo;
	}


	public void setProNo(int proNo) {
		this.proNo = proNo;
	}


	public ProductDTO getProduct() {
		return product;
	}


	public void setProduct(ProductDTO product) {
		this.product = product;
	}


	public int getOrdNo() {
		return ordNo;
	}


	public void setOrdNo(int ordNo) {
		this.ordNo = ordNo;
	}


	public OrderDetailDTO getOrderDetail() {
		return orderDetail;
	}


	public void setOrderDetail(OrderDetailDTO orderDetail) {
		this.orderDetail = orderDetail;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	@Override
	public String toString() {
		return "OrderDTO [proNo=" + proNo + ", product=" + product + ", ordNo=" + ordNo + ", orderDetail=" + orderDetail
				+ ", amount=" + amount + "]";
	}


	


	

	

}
