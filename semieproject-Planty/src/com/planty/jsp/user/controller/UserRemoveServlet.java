package com.planty.jsp.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;


@WebServlet("/user/remove")
public class UserRemoveServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDTO loginUser = (UserDTO)request.getSession().getAttribute("loginUser");

		String id = loginUser.getId();
		
		int result = new UserService().removeUser(id);
		
		String page = "";
		
		if(result > 0) {
			request.getSession().invalidate();
			page = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteUser");
			
		} else {
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 탈퇴에 실패했습니다.");
		}
		
		request.getRequestDispatcher(page).forward(request, response);

	}


}
