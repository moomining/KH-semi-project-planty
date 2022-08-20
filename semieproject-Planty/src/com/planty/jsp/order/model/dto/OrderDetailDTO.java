package com.planty.jsp.order.model.dto;

import java.sql.Date;

import com.planty.jsp.user.model.dto.UserDTO;

public class OrderDetailDTO {
	
	private int ordNo;
	
	private String id;
	
	private String recName;
	private String recAddress;
	private String recPhone;
	private int recZipCode;
	private String recReq;
	private int ordPrice;
	private Date ordDate;
	private String ordState;
	private String ordDelivery;
	private String ordDevNo;
	
	public OrderDetailDTO() {}

	public OrderDetailDTO(int ordNo, String id, String recName, String recAddress, String recPhone, int recZipCode,
			String recReq, int ordPrice, Date ordDate, String ordState, String ordDelivery, String ordDevNo) {
		super();
		this.ordNo = ordNo;
		this.id = id;
		this.recName = recName;
		this.recAddress = recAddress;
		this.recPhone = recPhone;
		this.recZipCode = recZipCode;
		this.recReq = recReq;
		this.ordPrice = ordPrice;
		this.ordDate = ordDate;
		this.ordState = ordState;
		this.ordDelivery = ordDelivery;
		this.ordDevNo = ordDevNo;
	}

	public int getOrdNo() {
		return ordNo;
	}

	public void setOrdNo(int ordNo) {
		this.ordNo = ordNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRecName() {
		return recName;
	}

	public void setRecName(String recName) {
		this.recName = recName;
	}

	public String getRecAddress() {
		return recAddress;
	}

	public void setRecAddress(String recAddress) {
		this.recAddress = recAddress;
	}

	public String getRecPhone() {
		return recPhone;
	}

	public void setRecPhone(String recPhone) {
		this.recPhone = recPhone;
	}

	public int getRecZipCode() {
		return recZipCode;
	}

	public void setRecZipCode(int recZipCode) {
		this.recZipCode = recZipCode;
	}

	public String getRecReq() {
		return recReq;
	}

	public void setRecReq(String recReq) {
		this.recReq = recReq;
	}

	public int getOrdPrice() {
		return ordPrice;
	}

	public void setOrdPrice(int ordPrice) {
		this.ordPrice = ordPrice;
	}

	public Date getOrdDate() {
		return ordDate;
	}

	public void setOrdDate(Date ordDate) {
		this.ordDate = ordDate;
	}

	public String getOrdState() {
		return ordState;
	}

	public void setOrdState(String ordState) {
		this.ordState = ordState;
	}

	public String getOrdDelivery() {
		return ordDelivery;
	}

	public void setOrdDelivery(String ordDelivery) {
		this.ordDelivery = ordDelivery;
	}

	public String getOrdDevNo() {
		return ordDevNo;
	}

	public void setOrdDevNo(String ordDevNo) {
		this.ordDevNo = ordDevNo;
	}

	
	
	
	
	
}


