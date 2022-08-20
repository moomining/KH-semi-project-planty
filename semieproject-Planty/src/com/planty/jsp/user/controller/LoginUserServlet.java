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


@WebServlet("/user/login")
public class LoginUserServlet extends HttpServlet {
	/* 로그인 버튼 클릭 시 get요청이 들어오기 때문에 로그인 하는 form으로 포워딩 해주는 역할 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login/loginForm.jsp").forward(request, response);
		
	}
	
	/* 로그인 폼을 작성 후 post 요청을 할 경우 처리하는 역할 */
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
		
		
		if(loginUser!= null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			System.out.println(loginUser.getAuthNo());
			
			if(loginUser.getAuthNo() == 3) {
				response.sendRedirect(request.getContextPath() + "/admin/관리자 주소");
				
				} else if (loginUser.getAuthNo() == 2) {	
				response.sendRedirect(request.getContextPath() + "/product/regist");
				
				} else {
				response.sendRedirect(request.getContextPath() + "/main/aboutus");
				}
			}else {	
			request.setAttribute("message", "로그인 실패!");
			request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		}
		
	}
}
