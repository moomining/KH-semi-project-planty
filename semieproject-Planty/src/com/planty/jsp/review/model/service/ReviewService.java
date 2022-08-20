package com.planty.jsp.review.model.service;

import static com.planty.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.planty.jsp.review.model.dao.ReviewDAO;
import com.planty.jsp.review.model.dto.AttachmentDTO;
import com.planty.jsp.review.model.dto.ReviewDTO;

public class ReviewService {

	private final ReviewDAO reviewDAO;
		
	public ReviewService() {
		reviewDAO = new ReviewDAO();
	}
	
	public List<ReviewDTO> selectReviewList(String id) {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* List 조회 */
		List<ReviewDTO> reviewList = reviewDAO.selectReviewList(session, id);
		
		/* Connection 닫기 */
		session.close();
		
		/* 조회 결과 반환 */
		return reviewList;
	}

	public int insertReview(ReviewDTO review) {
		/* Connection 생성 */
		SqlSession session = getSqlSession();
		
		/* 최종적으로 반환할 result 선언 */
		int result = 0;
		
		/* 먼저 board 테이블에 thumbnail 내용부터 insert 한다. */
		int reviewResult = reviewDAO.insertReview(session, review);
		
		System.out.println("reviewResult : " + review);
	
		/* Attachment 리스트를 불러온다. */
		List<AttachmentDTO> fileList = review.getAttachmentList();
		
		/* fileList에 boardNo값을 넣는다. */
		for(int i = 0; i < fileList.size(); i++) {
			fileList.get(i).setReviewNo(review.getReviewNo());
		}
		
		/* Attachment 테이블에 list size만큼 insert 한다. */
		int attachmentResult = 0;
		for(int i = 0; i < fileList.size(); i++) {
			attachmentResult += reviewDAO.insertAttachment(session, fileList.get(i));
		}
		
		/* 모든 결과가 성공이면 트랜젝션을 완료한다. */
		if(reviewResult > 0 && attachmentResult == fileList.size()) {
			session.commit();
			result = 1;                                                       
		} else {
			session.rollback();
		}
		
		/* Connection을 닫는다. */
		session.close();
		
		/* 수행 결과를 리턴한다. */
		return result;
	}

}
