<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function(){
			const successCode = "${ requestScope.successCode }";
			
			let successMessage = "";
			let movePath = "";
			
			switch(successCode){
				case "terms" :
					movePath = "${ pageContext.servletContext.contextPath }/user/regist2";
				case "insertUser" : 
					successMessage = "회원 가입에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/main/aboutus";
					break;
				case "updateUser" : 
					successMessage = "회원 정보 변경에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/user/modify";
					break;
				case "updateUserPassword" : 
					successMessage = "회원 비밀번호 변경에 성공하셨습니다!";
					window.close();
					break;
				case "deleteUser" : 
					successMessage = "회원 탈퇴에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/main/aboutus";
					break;
				case "insertNotice" : 
					successMessage = "공지사항 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/list";
					break;
				case "updateNotice" : 
					successMessage = "공지사항 수정에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/detail?no=${ no }";
					break;
				case "deleteNotice" : 
					successMessage = "공지사항 삭제에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/notice/list";
					break;
				case "insertBoard" : 
					successMessage = "게시판 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/board/list";
					break;
				case "insertReview" : 
					successMessage = "리뷰 등록에 성공하셨습니다!";
					movePath = "${ pageContext.servletContext.contextPath }/review/list";
					break;
			}

			alert(successMessage);
			
			location.replace(movePath);
		})();
	
	</script>
</body>
</html>

