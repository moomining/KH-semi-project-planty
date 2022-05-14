package com.planty.jsp.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;



@WebServlet("/user/findiduser")
public class FindIdServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login/findId-member.jsp").forward(request, response);

		}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		System.out.println("name : " + name);
		System.out.println("email : " + email);
		
		UserDTO requestUser = new UserDTO();
		requestUser.setName(name);
		requestUser.setEmail(email);
	
		UserService userService = new UserService();
		
		UserDTO findId = userService.findId(requestUser);
		System.out.println(findId);
		
		if(findId!= null) {
			request.setAttribute("findId", findId);
			request.getRequestDispatcher("/WEB-INF/views/login/result-id.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "실패ㅠ");
			request.getRequestDispatcher("/WEB-INF/views/login/findId-member.jsp").forward(request, response);
		}
		
	}

}