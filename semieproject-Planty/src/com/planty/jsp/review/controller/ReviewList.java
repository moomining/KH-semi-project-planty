package com.planty.jsp.review.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.planty.jsp.order.model.dto.OrderDTO;
import com.planty.jsp.order.model.service.OrderService;
import com.planty.jsp.review.model.dto.ReviewDTO;
import com.planty.jsp.review.model.service.ReviewService;
import com.planty.jsp.user.model.dto.UserDTO;


@WebServlet("/review/list")
public class ReviewList extends HttpServlet {
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = ((UserDTO)request.getSession().getAttribute("loginUser")).getId();
		
		ReviewService ReviewService = new ReviewService();
		
		List<ReviewDTO> reviewList = ReviewService.selectReviewList(id);
		
		for(ReviewDTO review : reviewList) {
			System.out.println(review);
		}
		
		OrderService orderService = new OrderService();
		
		List<OrderDTO> orderList = orderService.selectOrderList(id);
		
		for(OrderDTO order : orderList) {
			System.out.println(order);
		}
		
		
		
		
		String path = "";
		if(reviewList != null) {
			path = "/WEB-INF/views/review/reviewList.jsp";
			request.setAttribute("reviewList", reviewList);
			request.setAttribute("orderList", orderList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "리뷰 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}


}
