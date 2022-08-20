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

@WebServlet("/user/change")
public class ChangeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login/loginForm.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		System.out.println("id : " + id);
		System.out.println("pwd : " + pwd);
		
		UserDTO requestUser = new UserDTO();
		requestUser.setId(id);
		requestUser.setPwd(pwd);
		
		UserService userService = new UserService();
		
		UserDTO loginUser = userService.loginCheck(requestUser);
		System.out.println(loginUser);
		
		if(loginUser != null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			System.out.println(loginUser.getAuthNo());
			
			if(3 == (loginUser.getAuthNo())) {
				response.sendRedirect(request.getContextPath() + "/product/regist");
			} else {
				response.sendRedirect(request.getContextPath());
			}
		} else {
			request.setAttribute("loginFailed", "loginFailed");
			request.getRequestDispatcher("/WEB-INF/views/login/loginForm.jsp").forward(request, response);
		}
	}

}
