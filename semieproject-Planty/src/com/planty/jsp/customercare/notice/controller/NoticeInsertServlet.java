package com.planty.jsp.customercare.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.customercare.notice.model.dto.NoticeDTO;
import com.planty.jsp.customercare.notice.model.service.NoticeService;

@WebServlet("/notice/insert")
public class NoticeInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/customercare/notice/insertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDTO newNotice = new NoticeDTO();
		newNotice.setTitle(title);
		newNotice.setContent(content);
		newNotice.setId("test");  //로그인된 아이디로 변경
		
		NoticeService noticeService = new NoticeService();
		int result = noticeService.insertNotice(newNotice);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertNotice");
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 등록에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
