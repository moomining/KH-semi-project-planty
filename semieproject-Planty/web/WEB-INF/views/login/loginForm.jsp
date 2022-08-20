<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/favi.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/login.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
  <jsp:include page="../common/menubar.jsp"/>
<body>
	<div class="main-container">
		<div id=loginimg class="main-wrap">
		
		<form method="POST" action="${ pageContext.servletContext.contextPath }/user/login" class="login-input-section-wrap">
            <div class="login-title1">
                <h2 class="login-title2">LOG IN</h2>
            </div>
			<div class="login-input-wrap">	
				<input name="id" id="id" placeholder="회원 아이디" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input name="pwd" id="pwd" placeholder="비밀번호" type="password" required="required"></input>
			</div>
            <div class="login-button-wrap">
				<button name="login" id="login" type="submit" >로그인 하기</button>
			</div>
            <div class="Easy-sgin-in-wrap">
                <p class="forget-msg">
                    <a href="${ pageContext.servletContext.contextPath }/user/findiduser">아이디 찾기</a> | <a href="${ pageContext.servletContext.contextPath }/user/findpwduser">비밀번호 찾기</a> | <a  href="${ pageContext.servletContext.contextPath }/user/regist">회원가입</a></p> 
            </div>
			 <div onclick="kakaoLogin();">
			  <a id="kakao-login-btn" href="javascript:void(0)"> <img class="log1"  src="${ pageContext.servletContext.contextPath }/resources/image/카카오톡.png"></a>
			 </div>
			 
			<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
			<script>
			Kakao.init('da1224c223577e5a09c518b3d79e51c8'); //발급받은 키 중 javascript키를 사용해준다.
			console.log(Kakao.isInitialized()); // sdk초기화여부판단
			//카카오로그인 
			function kakaoLogin() {
			    Kakao.Auth.login({
			      success: function (response) {
			        Kakao.API.request({
			          url: '/v2/user/me',
			          success: function (response) {
			        	  console.log(response)
			          },
			          fail: function (error) {
			            console.log(error)
			          },
			        })
			      },
			      fail: function (error) {
			        console.log(error)
			      },
			    })
			  }
			</script>
				
            <div class="empty">
             <br>
            </div>
        
		</form>
	  
		</div>
	</div>
	

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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
</html>