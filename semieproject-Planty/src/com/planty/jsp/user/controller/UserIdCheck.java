package com.planty.jsp.user.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.user.model.service.UserService;


@WebServlet("/user/idCheck")
public class UserIdCheck extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		UserService userService = new UserService();
		int result = userService.userIdCheck(id);
		
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			out.print("fail");
		} else {
			out.print("success");
		}
	}

}