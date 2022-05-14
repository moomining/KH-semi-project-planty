<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CHANGE</title>
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/favi.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/change.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
 <jsp:include page="../common/menubar.jsp"/>
<body>
	<div class="main-container">
		<div class="main-wrap">
		
		<form class="login-input-section-wrap" method="post"  action="${ pageContext.servletContext.contextPath }/user/change">
            <div class="login-title1">
                <h2 class="login-title2">비밀번호 변경</h2>
            </div>
             <div>
                 <div class="login-input-wrap"> 
                     <input name="checknum"  placeholder="인증번호" id="user" type="text" class="input"><br>
                 </div>
            </div>
			<div class="login-input-wrap">	
				<input name="changepwd" placeholder="변경할 비밀번호" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input name="changepwd2" placeholder="비밀번호 확인" type="password"></input>
			</div>
            <div class="login-button-wrap">
				<button type="button" > 확인</button>
			</div>
        
         
            <div class="empty">
             <br>
            </div>
		</form>

		</div>
	</div>	
</body>
   
 <footer>
    <p>
        <span>상호: PLANTY | 대표: 김플랜 | 개인정보관리책임자: 김플랜 | 전화: 070-1234-5678 | 이메일: planty00@naver.com</span><br/>
        <span>주소: 서울특별시 플랜구 식물동 159-2 | 사업자등록번호: 151-15-15151 | 통신판매: 2022-서울강남-0000 | 호스팅제공자: (주)식물샵</span><br/>
    </p>
    <nav>
        <a href="${ pageContext.servletContext.contextPath }/main/policy">이용약관</a> |
        <a href="${ pageContext.servletContext.contextPath }/main/policy">개인정보처리방침</a>
    </nav>
</footer>