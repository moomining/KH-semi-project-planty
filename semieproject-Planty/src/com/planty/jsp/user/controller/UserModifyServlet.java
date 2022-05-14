package com.planty.jsp.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;

@WebServlet("/user/modify")
public class UserModifyServlet extends HttpServlet {
	
	/* 정보 수정 버튼 클릭 시 get요청이 들어오기 때문에 정보수정 하는 form으로 포워딩 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/user/modifyForm.jsp").forward(request, response);
		
	}

	/* 정보 수정 폼을 작성 후 post 요청을 할 경우 처리하는 역할 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String addrDetail = request.getParameter("addrDetail");	
		
		UserDTO requestUser = new UserDTO();
		requestUser.setId(id);
		requestUser.setName(name);
		requestUser.setPhone(phone);
		requestUser.setEmail(email);
		requestUser.setZipcode(zipcode);
		requestUser.setAddress(address);
		requestUser.setAddrDetail(addrDetail);
		
		System.out.println("UserController requestUser : " + requestUser);
		
		UserDTO changedUserInfo = new UserService().modifyUser(requestUser);
		
		System.out.println("UserController changedUserInfo : " + changedUserInfo);
		
		String page = "";
		
		if(changedUserInfo != null) {
			request.getSession().setAttribute("loginUser", changedUserInfo);
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateUser");
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 정보 수정 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);

	}

}
