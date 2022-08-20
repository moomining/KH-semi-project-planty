package com.planty.jsp.common.filter;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.planty.jsp.user.model.dto.UserDTO;

@WebFilter(urlPatterns = { "/notice/*", "/user/*", "/review/*", "/main/*" })
public class AuthenticationFilter implements Filter {

	Map<String, List<String>> permitURIList;

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest hrequest = (HttpServletRequest) request;
		String uri = hrequest.getRequestURI();
		String intent = uri.replace(hrequest.getContextPath(), "");

		System.out.println("intent : " + intent);

		/* 세션에 권한이 있는지 확인하여 허용된 url에만 접근 가능하도록 설정한다. */
		HttpSession requestSession = hrequest.getSession();
		UserDTO loginUser = (UserDTO)requestSession.getAttribute("loginUser");

		boolean isAuthorized = false;
		if (loginUser != null) {

			boolean isPermitAdmin = permitURIList.get("adminPermitList").contains(intent);
			boolean isPermitMember = permitURIList.get("memberPermitList").contains(intent);

			boolean isPermitAll = permitURIList.get("allPermitList").contains(intent);
			if (loginUser.getAuthNo() == 3) {

				if (isPermitAdmin || isPermitMember ||  isPermitAll) {
					isAuthorized = true;
				}

			} else if (loginUser.getAuthNo() == 1) {

				if ((isPermitMember || isPermitAll) && !isPermitAdmin) {
					isAuthorized = true;
				}

			}  

			if (isAuthorized) {
				chain.doFilter(request, response);
			} else {
				((HttpServletResponse) response).sendError(403);
			}

		} else {

			if (permitURIList.get("allPermitList").contains(intent)) {
				chain.doFilter(request, response);
			} else {
				request.setAttribute("message", "로그인이 필요한 서비스 입니다");
				request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(hrequest, response);
			}
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {

		permitURIList = new HashMap<>();
		List<String> adminPermitList = new ArrayList<>();
		List<String> memberPermitList = new ArrayList<>();
		List<String> allPermitList = new ArrayList<>();

//		-----관리자 허용 리스트-----
//		서경 추가
		adminPermitList.add("/notice/insert");
		adminPermitList.add("/notice/update");
		adminPermitList.add("/notice/delete");

//		-----멤버 허용 리스트-----
//		아름 추가
		memberPermitList.add("/user/modify");
		memberPermitList.add("/user/modify?");
		memberPermitList.add("/user/modifyPwd");
		memberPermitList.add("/user/remove");
		memberPermitList.add("/mypage/intro");
		memberPermitList.add("/mypage/coupon");
		memberPermitList.add("/review/list");
		memberPermitList.add("/review/insert");

//		서경 추가
//		태경 추가
//		윤호 추가
//		혜진 추가

//		-----전체 허용 리스트-----
//		전체 허용 리스트 - 아름 추가
		allPermitList.add("/user/idCheck");
		allPermitList.add("/user/regist");
		allPermitList.add("/user/regist2");
		allPermitList.add("/user/login");
		allPermitList.add("/user/logout");

//		전체 허용 리스트 - 서경 추가
		allPermitList.add("/notice/list");
		allPermitList.add("/notice/detail");
//		전체 허용 리스트 - 태경 추가
		allPermitList.add("/main/aboutus");
		allPermitList.add("/main/faq");
		allPermitList.add("/main/intro");
		allPermitList.add("/main/policy");
		allPermitList.add("/user/login");
		allPermitList.add("/user/findiduser");
		allPermitList.add("/user/resultid");
//		윤호 추가
//		혜진 추가

		permitURIList.put("adminPermitList", adminPermitList);
		permitURIList.put("memberPermitList", memberPermitList);
		permitURIList.put("allPermitList", allPermitList);

	}

}

