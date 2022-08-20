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

/**
 * Servlet implementation class UserRegistTermsServlet
 */
@WebServlet("/user/regist")
public class UserRegistTermsServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/user/registTerms.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String textYn = request.getParameterValues("textYn")[0];
				 
		
		System.out.println("textYn : " + textYn);
		
		request.setAttribute("textYn", textYn);
		
		System.out.println(textYn);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/user/registForm.jsp");

		rd.forward(request, response);
		
		
	}

}
