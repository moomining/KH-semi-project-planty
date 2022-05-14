package com.planty.jsp.user.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.planty.jsp.user.model.dto.UserDTO;
import com.planty.jsp.user.model.service.UserService;

/**
 * Servlet implementation class findPwdMemberServlet
 */
@WebServlet("/user/findpwduser")
public class FindPwdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login/findPwd-member.jsp").forward(request, response);
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		
		UserDTO m = new UserService().findPwd(id);
	        if( m ==null || !m.getEmail().equals(email))
	        {
	            request.setAttribute("msg", "아이디나 이메일 정보가 맞지 않습니다");
	            request.setAttribute("loc", "/member/finpwduser");
	            request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	            return;
	        }
	        
	                //mail server 설정
	                String host = "smtp.naver.com";
	                String user = "ks87071"; //자신의 네이버 계정
	                String password = "kk52484588";//자신의 네이버 패스워드
	                
	                //메일 받을 주소
	                String to_email = m.getEmail();
	                
	                //SMTP 서버 정보를 설정한다.
	                Properties props = new Properties();
	                props.put("mail.smtp.host", host);
	                props.put("mail.smtp.port", 465);
	                props.put("mail.smtp.auth", "true");
	                props.put("mail.smtp.ssl.enable", "true");
	                
	                //인증 번호 생성기
	                StringBuffer temp =new StringBuffer();
	                Random ran = new Random();
	                for(int i=0;i<10;i++)
	                {
	                    int randex = ran.nextInt(3);
	                    switch (randex) {
	                    case 0:
	                        // a-z
	                        temp.append((char) ((int) (ran.nextInt(26)) + 97));
	                        break;
	                    case 1:
	                        // A-Z
	                        temp.append((char) ((int) (ran.nextInt(26)) + 65));
	                        break;
	                    case 2:
	                        // 0-9
	                        temp.append((ran.nextInt(10)));
	                        break;
	                    }
	                }
	                String AuthenticationKey = temp.toString();
	                System.out.println(AuthenticationKey);
	                
	                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(user,password);
	                    }
	                });
	                
	                //email 전송
	                try {
	                    MimeMessage msg = new MimeMessage(session);
	                    msg.setFrom(new InternetAddress(user, "Planty"));
	                    msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));
	                    
	                    //메일 제목
	                    msg.setSubject("Planty 인증메일");
	                    //메일 내용
	                    msg.setText("인증 번호는 :"+temp + "입니다.");
	                    
	                    Transport.send(msg);
	                    System.out.println("이메일 전송");
	                    
	                }catch (Exception e) {
	                    e.printStackTrace();// TODO: handle exception
	                }
	                HttpSession saveKey = request.getSession();
	                saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
	             
	                request.setAttribute("id", id);
	                request.getRequestDispatcher("/views/login/change.jsp").forward(request, response);
	    }
}

