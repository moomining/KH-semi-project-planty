package com.planty.jsp.customercare.notice.model.dto;

import java.util.Date;

public class NoticeDTO {

	private int no;
	private String title;
	private String content;
	private String id;
	private int count;
	private Date createDate;
	private Date editDate;
	private String status;
	
	public NoticeDTO() {}

	public NoticeDTO(int no, String title, String content, String id, int count, Date createDate, Date editDate,
			String status) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.id = id;
		this.count = count;
		this.createDate = createDate;
		this.editDate = editDate;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getEditDate() {
		return editDate;
	}

	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "NoticeDTO [no=" + no + ", title=" + title + ", content=" + content + ", id=" + id + ", count=" + count
				+ ", createDate=" + createDate + ", editDate=" + editDate + ", status=" + status + "]";
	}

	
	
	
	
}
