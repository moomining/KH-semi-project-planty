package com.planty.jsp.user.model.dto;

	import java.sql.Date;


	public class UserDTO {
		
		private String id;
		private int authNo;
		private String pwd;
		private String address;
		private String addrDetail;
		private String zipcode;
		private String phone;
		private String email;
		private String textYn;
		private Date enrollDate;
		private String name;
		private String ceoName;
		private String regNo;
		private String approval;
		
		
		public UserDTO() {}


		public UserDTO(String id, int authNo, String pwd, String address, String addrDetail, String zipcode,
				String phone, String email, String textYn, Date enrollDate, String name, String ceoName, String regNo,
				String approval) {

			super();
			this.id = id;
			this.authNo = authNo;
			this.pwd = pwd;
			this.address = address;
			this.addrDetail = addrDetail;
			this.zipcode = zipcode;
			this.phone = phone;
			this.email = email;
			this.textYn = textYn;
			this.enrollDate = enrollDate;
			this.name = name;
			this.ceoName = ceoName;
			this.regNo = regNo;
			this.approval = approval;
		}


		public String getId() {
			return id;
		}


		public void setId(String id) {
			this.id = id;
		}


		public int getAuthNo() {
			return authNo;
		}


		public void setAuthNo(int authNo) {
			this.authNo = authNo;
		}


		public String getPwd() {
			return pwd;
		}


		public void setPwd(String pwd) {
			this.pwd = pwd;
		}


		public String getAddress() {
			return address;
		}


		public void setAddress(String address) {
			this.address = address;
		}


		public String getAddrDetail() {
			return addrDetail;
		}


		public void setAddrDetail(String addrDetail) {
			this.addrDetail = addrDetail;
		}


		public String getZipcode() {
			return zipcode;
		}


		public void setZipcode(String zipcode) {
			this.zipcode = zipcode;
		}


		public String getPhone() {
			return phone;
		}


		public void setPhone(String phone) {
			this.phone = phone;
		}


		public String getEmail() {
			return email;
		}


		public void setEmail(String email) {
			this.email = email;
		}


		public String getTextYn() {
			return textYn;
		}


		public void setTextYn(String textYn) {
			this.textYn = textYn;
		}


		public Date getEnrollDate() {
			return enrollDate;
		}


		public void setEnrollDate(Date enrollDate) {
			this.enrollDate = enrollDate;
		}


		public String getName() {
			return name;
		}


		public void setName(String name) {
			this.name = name;
		}

		public String getCeoName() {
			return ceoName;
		}


		public void setCeoName(String ceoName) {
			this.ceoName = ceoName;
		}


		public String getRegNo() {
			return regNo;
		}


		public void setRegNo(String regNo) {
			this.regNo = regNo;
		}


		public String getApproval() {
			return approval;
		}


		public void setApproval(String approval) {
			this.approval = approval;
		}


		@Override
		public String toString() {
			return "UserDTO [id=" + id + ", authNo=" + authNo + ", pwd=" + pwd + ", address=" + address
					+ ", addrDetail=" + addrDetail + ", zipcode=" + zipcode + ", phone=" + phone + ", email=" + email
					+ ", textYn=" + textYn + ", enrollDate=" + enrollDate + ", name=" + name + ", ceoName=" + ceoName
					+ ", regNo=" + regNo + ", approval=" + approval + "]";

		}





		
		

}