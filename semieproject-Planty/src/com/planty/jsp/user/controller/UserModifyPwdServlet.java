package com.planty.jsp.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;


@WebServlet("/user/modifyPwd")
public class UserModifyPwdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/user/modifyPasswordForm.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserDTO loginUser = (UserDTO) request.getSession().getAttribute("loginUser");
		
		String id = loginUser.getId();
		
		String checkPwd = request.getParameter("checkPwd"); 
		
		UserDTO requestUser = new UserDTO();
		requestUser.setId(id);
		requestUser.setPwd(checkPwd);
		
		String pwd = request.getParameter("pwd"); 

		int result = new UserService().modifyPwd(requestUser, pwd);

		String page = "";
		
		if(result > 0) {
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateUserPassword");
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 비밀번호 정보 수정 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
	}

}
