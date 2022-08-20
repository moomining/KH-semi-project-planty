package com.planty.jsp.review.model.dto;

import java.math.BigDecimal;
import java.sql.Date;
import java.util.List;

import com.planty.jsp.order.model.dto.OrderDTO;
import com.planty.jsp.user.model.dto.UserDTO;

public class ReviewDTO {
	
	private int reviewNo;
	private int ordNo;
	private OrderDTO order;
	private String id;
	private UserDTO member;
	private int score;
	private String title;
	private String content;
	private Date date;
	private Date editDate;
	private String delYn;
	private List<AttachmentDTO> attachmentList;
	
	public ReviewDTO() {}

	public ReviewDTO(int reviewNo, int ordNo, OrderDTO order, String id, UserDTO member, int score, String title,
			String content, Date date, Date editDate, String delYn, List<AttachmentDTO> attachmentList) {
		super();
		this.reviewNo = reviewNo;
		this.ordNo = ordNo;
		this.order = order;
		this.id = id;
		this.member = member;
		this.score = score;
		this.title = title;
		this.content = content;
		this.date = date;
		this.editDate = editDate;
		this.delYn = delYn;
		this.attachmentList = attachmentList;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getOrdNo() {
		return ordNo;
	}

	public void setOrdNo(int ordNo) {
		this.ordNo = ordNo;
	}

	public OrderDTO getOrder() {
		return order;
	}

	public void setOrder(OrderDTO order) {
		this.order = order;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public UserDTO getMember() {
		return member;
	}

	public void setMember(UserDTO member) {
		this.member = member;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Date getEditDate() {
		return editDate;
	}

	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public List<AttachmentDTO> getAttachmentList() {
		return attachmentList;
	}

	public void setAttachmentList(List<AttachmentDTO> attachmentList) {
		this.attachmentList = attachmentList;
	}

	@Override
	public String toString() {
		return "ReviewDTO [reviewNo=" + reviewNo + ", ordNo=" + ordNo + ", order=" + order + ", id=" + id + ", member="
				+ member + ", score=" + score + ", title=" + title + ", content=" + content + ", date=" + date
				+ ", editDate=" + editDate + ", delYn=" + delYn + ", attachmentList=" + attachmentList + "]";
	}

	
	
	

}
