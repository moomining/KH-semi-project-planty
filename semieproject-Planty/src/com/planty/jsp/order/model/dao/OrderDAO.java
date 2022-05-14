package com.planty.jsp.order.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.planty.jsp.order.model.dto.OrderDTO;

public class OrderDAO {

	public List<OrderDTO> selectOrderList(SqlSession session, String id) {
		return session.selectList("OrderDAO.selectOrderList", id);
	}

}
