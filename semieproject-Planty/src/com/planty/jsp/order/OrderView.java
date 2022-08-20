package com.planty.jsp.order;

import java.io.IOException;
import java.util.List;

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


@WebServlet("/order/view")
public class OrderView extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = ((UserDTO)request.getSession().getAttribute("loginUser")).getId();
		
		OrderService orderService = new OrderService();
		
		List<OrderDTO> orderList = orderService.selectOrderList(id);
		
		for(OrderDTO order : orderList) {
			System.out.println(order);
		}
		
		
		
		String path = "";
		if(orderList != null) {
			path = "/WEB-INF/views/review/orderView.jsp";
			request.setAttribute("orderList", orderList);
		} else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "주문 조회 실패!");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
