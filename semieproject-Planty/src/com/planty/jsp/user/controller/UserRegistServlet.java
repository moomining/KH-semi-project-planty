package com.planty.jsp.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;


@WebServlet("/user/regist2")
public class UserRegistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/user/registForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String address = request.getParameter("address");
		String addrDetail = request.getParameter("addrDetail");
		String zipcode = request.getParameter("zipcode");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String textYn = request.getParameter("textYn");
		String name = request.getParameter("name");
		
		
		UserDTO requestUser = new UserDTO();
		requestUser.setId(id);
		requestUser.setPwd(pwd);
		requestUser.setAddress(address);
		requestUser.setAddrDetail(addrDetail);
		requestUser.setZipcode(zipcode);
		requestUser.setPhone(phone);
		requestUser.setEmail(email);
		requestUser.setTextYn(textYn);
		requestUser.setName(name);
	
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		System.out.println("userController requestUser : " + requestUser);
		
		int result = new UserService().registUser(requestUser);
		
		System.out.println("userController result : " + result);
		
		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/common/success.jsp";
			
			request.setAttribute("successCode", "insertUser");
			
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			
			request.setAttribute("message", "회원 가입 실패, 항목을 확인해주세요.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
