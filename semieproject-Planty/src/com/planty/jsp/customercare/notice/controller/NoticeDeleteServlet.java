package com.planty.jsp.customercare.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.customercare.notice.model.service.NoticeService;



@WebServlet("/notice/delete")
public class NoticeDeleteServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		int result = new NoticeService().deleteNotice(no);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteNotice");
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 삭제에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
