package com.planty.jsp.customercare.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.customercare.notice.model.dto.NoticeDTO;
import com.planty.jsp.customercare.notice.model.service.NoticeService;

@WebServlet("/notice/update")
public class NoticeUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		
		NoticeService noticeService = new NoticeService();
		NoticeDTO notice = noticeService.selectNoticeDetail(no);
		
		String path = "";
		if(notice != null) {
			path = "/WEB-INF/views/customercare/notice/updateForm.jsp";
			request.setAttribute("notice", notice);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = Integer.parseInt(request.getParameter("no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDTO updateNotice = new NoticeDTO();
		updateNotice.setNo(no);
		updateNotice.setTitle(title);
		updateNotice.setContent(content);
		
		NoticeService noticeService = new NoticeService();
		int result = noticeService.updateNotice(updateNotice);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "updateNotice");
			request.setAttribute("no", no);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 수정에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
