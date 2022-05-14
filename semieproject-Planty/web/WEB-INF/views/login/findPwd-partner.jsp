<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>findPwdPartner</title>
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/favi.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="${ pageContext.servletContext.contextPath }/resources/css/find-pwd.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
  <jsp:include page="../common/menubar.jsp"/>
<body>

	<div class="main-container">
		<div class="main-wrap">
		
		<form class="login-input-section-wrap">
            <div class="login-title1">
                <h2 class="login-title2">비밀번호 찾기</h2>
            </div>
            <div class="type" >
                <div class="dropdown" id="selectbox">
                <button class="btn btn-secondary dropdown-toggle" style="margin-bottom: 10px; font-size: 14px; background-color:#4C5B5D ;" type="button" id="dropdownMenu2" data-bs-toggle="dropdown" aria-expanded="false">회원유형</button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
             	  <li><button class="dropdown-item" style="font-size: 12px; color:#4C5B5D; " type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/login/findPwd-memeber.jsp'">개인회원</button></li>
                  <li><button class="dropdown-item" style="font-size: 12px; color:#4C5B5D; " type="button" onclick="location.href='${ pageContext.servletContext.contextPath }/login/findPwd-partner.jsp'">법인사업자 회원</button></li>
                </ul>
              </div>
            </div>
           <div class="type1">
        
            <div class="type2">
                <div  class="login-input-wrap">   
                    <input name="id" placeholder="아이디" id="id" type="text" class="input"><br>
                </div>
              
                <div class="type2">
                    <div class="login-input-wrap"> 
                        <input name="regNo"  placeholder="법인등록번호" id="regNo" type="text" class="input"><br>
                    </div>
               </div>

            <div class="type2">
                <div class="login-input-wrap"> 
                    <input name="email" placeholder="이메일" id="email" type="text" class="input2" data-type="password"><br>
                </div>
            </div>
                
           
              </div>     
              <div class="login-button-wrap">
				<button name="findPwd" type="button"> 확인 </button>
			</div>
    
            <div class="empty">
             <br>
            </div>
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