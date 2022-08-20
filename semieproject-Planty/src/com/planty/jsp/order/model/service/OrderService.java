package com.planty.jsp.order.model.service;

import static com.planty.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.planty.jsp.order.model.dao.OrderDAO;
import com.planty.jsp.order.model.dto.OrderDTO;

public class OrderService {
	
	private final OrderDAO orderDAO;
	
	public OrderService() {
		orderDAO = new OrderDAO();
	}
	
	public List<OrderDTO> selectOrderList(String id) {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<OrderDTO> orderList = orderDAO.selectOrderList(session, id);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return orderList;
	}
	
	

}
