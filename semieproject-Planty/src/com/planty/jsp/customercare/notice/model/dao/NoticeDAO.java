package com.planty.jsp.customercare.notice.model.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.planty.jsp.customercare.notice.model.dto.NoticeDTO;

public class NoticeDAO {

	/* 공지사항 목록 전체 조회용 메소드 */
	public List<NoticeDTO> selectAllNoticeList(SqlSession session) {
		
		return session.selectList("NoticeDAO.selectAllNoticeList");
	}
	
	/* 공지사항 테이블 삽입용 메소드 */
	public int insertNotice(SqlSession session, NoticeDTO newNotice) {
		
		return session.insert("NoticeDAO.insertNotice", newNotice);
	}
	
	/* 공지사항 조회수 증가용 메소드 */
	public int incrementNoticeCount(SqlSession session, int no) {
		
		return session.update("NoticeDAO.incrementNoticeCount", no);
	}
	
	/* 공지사항 상세보기 조회용 메소드 */
	public NoticeDTO selectNoticeDetail(SqlSession session, int no) {
		
		return session.selectOne("NoticeDAO.selectNoticeDetail", no);
	}

	/* 공지사항 수정용 메소드 */
	public int updateNotice(SqlSession session, NoticeDTO updateNotice) {
		
		return session.update("NoticeDAO.updateNotice", updateNotice);
		
	}

	public int deleteNotice(SqlSession session, int no) {
		
		return session.update("NoticeDAO.deleteNotice", no);
		
	}
}
