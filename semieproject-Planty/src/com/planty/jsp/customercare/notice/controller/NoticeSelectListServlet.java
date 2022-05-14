package com.planty.jsp.customercare.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.customercare.notice.model.dto.NoticeDTO;
import com.planty.jsp.customercare.notice.model.service.NoticeService;


@WebServlet("/notice/list")
public class NoticeSelectListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<NoticeDTO> noticeList = new NoticeService().selectAllNoticeList();
		
		System.out.println(noticeList);
		
		String path = "";
		if(noticeList != null) {
			path = "/WEB-INF/views/customercare/notice/noticeList.jsp";
			request.setAttribute("noticeList", noticeList);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	
}
