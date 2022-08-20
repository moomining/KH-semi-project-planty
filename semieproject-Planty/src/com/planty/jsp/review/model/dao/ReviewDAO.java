package com.planty.jsp.review.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.planty.jsp.common.paging.SelectCriteria;
import com.planty.jsp.review.model.dto.AttachmentDTO;
import com.planty.jsp.review.model.dto.ReviewDTO;


public class ReviewDAO {


	/* 리뷰 목록 조회용 메소드 */
	public List<ReviewDTO> selectReviewList(SqlSession session, String id) {

		return session.selectList("ReviewDAO.selectReviewList", id);
	}

//	public List<ReviewDTO> selectReviewList(SqlSession session, SelectCriteria selectCriteria) {
//
//		return session.selectList("ReviewDAO.selectReviewList", selectCriteria);
//	}

	
	/* 썸네일 제목과 내용 insert용 메소드 */
	public int insertReview(SqlSession session, ReviewDTO newReview) {

		return session.insert("ReviewDAO.insertReview", newReview);
	}

	/* Attachment 테이블에 insert */
	public int insertAttachment(SqlSession session, AttachmentDTO file) {

		return session.insert("ReviewDAO.insertAttachment", file);
	}


	public ReviewDTO selectOneReview(SqlSession session, int no) {

		return session.selectOne("ReviewDAO.selectOneReview", no);
	}
}
