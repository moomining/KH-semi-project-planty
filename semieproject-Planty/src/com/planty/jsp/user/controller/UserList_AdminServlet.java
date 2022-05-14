package com.planty.jsp.user.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;

@WebServlet("/admin/userlist")
public class UserList_AdminServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<UserDTO> userList = new UserService().selectAllUserList();
		
		String path = "";
		if(userList != null) {
			path = "/WEB-INF/views/user/userList_admin.jsp";
			request.setAttribute("userList", userList);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
