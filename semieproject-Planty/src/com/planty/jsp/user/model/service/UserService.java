package com.planty.jsp.user.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.planty.jsp.user.model.dao.UserDAO;
import com.planty.jsp.user.model.dto.UserDTO;

import static com.planty.jsp.common.mybatis.Template.getSqlSession;

import java.util.List;

public class UserService {

	private final UserDAO userDAO;
		
	public UserService() {
		userDAO = new UserDAO();
	}
 
	public int registUser(UserDTO requestUser) { 
		
		SqlSession session = getSqlSession();
		
		int result = userDAO.insertUser(session, requestUser);
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
    }
     session.close();
	
		return result;
	}
  
  public int userIdCheck(String id) { 
		SqlSession session = getSqlSession();
		
		int result = userDAO.userIdCheck(session, id);
		
    session.close();
	
		return result;
	}                                  

  public UserDTO loginCheck(UserDTO requestUser) {
		SqlSession session = getSqlSession();
		UserDTO loginUser = null;
		
		String encPwd = userDAO.selectEncryptedPwd(session, requestUser);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(requestUser.getPwd(), encPwd)) {
			loginUser = userDAO.selectLoginUser(session, requestUser);
		}
		
		session.close();
		
		return loginUser;
	}
     
  
	public UserDTO findId (UserDTO requestUser) {

		SqlSession session = getSqlSession();
		UserDTO findId = null;
		
		findId = userDAO.findId (session, requestUser);
		
		session.close();
		
		return findId;
		
	}
	
	public UserDTO findPwd(String id)  {
		SqlSession session = getSqlSession();
		UserDTO findPwd = null;
		
		findPwd = userDAO.findPwd (session,id);
		
		session.close();

		return findPwd;
	}
	
	public int modifyPwd(UserDTO requestUser, String pwd) {
		SqlSession session = getSqlSession();
		int result = 0;
		
		String encPwd = userDAO.selectEncryptedPwd(session, requestUser);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		/* 비밀번호 수정 요청한 원문 비밀번호와 저장되어있는 암호화된 비밀번호가 일치하는지 확인한다. */
		if(passwordEncoder.matches(requestUser.getPwd(), encPwd)) {
			/* 비밀번호가 일치하는 경우에만 새로 입력 된 비밀번호로 수정한다. */
			requestUser.setPwd(pwd);
			result = userDAO.updatePwd(session, requestUser);
		}
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

                                               
	public UserDTO modifyUser(UserDTO requestUser) {
		SqlSession session = getSqlSession();
		UserDTO changedUserInfo = null;
		
		int result = userDAO.updateUser(session, requestUser);
		if(result > 0) {
			session.commit();
			changedUserInfo = userDAO.selectChangedInfo(session, requestUser.getId());
		} else {
			session.rollback();
		}
		
		session.close();
		
		return changedUserInfo;
	}

	public int removeUser(String id) {
		SqlSession session = getSqlSession();
		
		int result = userDAO.deleteUser(session, id);
		if(result > 0) {
			session.commit();	
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}


	public List<UserDTO> selectAllUserList() {
		
		SqlSession session = getSqlSession();
		
		List<UserDTO> userList = userDAO.selectAllUserList(session);
		
		session.close();
		
		return userList;
	}

}


