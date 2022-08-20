package com.planty.jsp.customercare.notice.model.service;

import static com.planty.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.planty.jsp.customercare.notice.model.dao.NoticeDAO;
import com.planty.jsp.customercare.notice.model.dto.NoticeDTO;

public class NoticeService {
	
	private final NoticeDAO noticeDAO;
	
	public NoticeService() {
		noticeDAO = new NoticeDAO();
	}
	
	/* 공지사항 전체 목록 조회용 메소드 */
	public List<NoticeDTO> selectAllNoticeList() {
		
		SqlSession session = getSqlSession();
		
		List<NoticeDTO> noticeList = noticeDAO.selectAllNoticeList(session);
		
		session.close();
		
		return noticeList;
	}
	
	/* 신규 공지 사항 등록용 메소드 */
	public int insertNotice(NoticeDTO newNotice) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.insertNotice(session, newNotice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 공지사항 상세보기용 메소드 */
	public NoticeDTO selectNoticeDetail(int no) {
		
		SqlSession session = getSqlSession();
		NoticeDTO noticeDetail = null;
		
		int result = noticeDAO.incrementNoticeCount(session, no);
		
		if(result > 0) {
			noticeDetail = noticeDAO.selectNoticeDetail(session, no);
			
			if(noticeDetail != null) {
				session.commit();
			} else {
				session.rollback();
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return noticeDetail;
	}

	/* 공지사항 수정용 메소드 */
	public int updateNotice(NoticeDTO updateNotice) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.updateNotice(session, updateNotice);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	/* 공지사항 삭제용 메소드 */
	public int deleteNotice(int no) {
		
		SqlSession session = getSqlSession();
		
		int result = noticeDAO.deleteNotice(session, no);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
}
