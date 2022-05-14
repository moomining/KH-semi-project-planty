<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- ress.css (https://github.com/filipelinhares/ress) -->
<link rel="stylesheet" href="https://unpkg.com/ress/dist/ress.min.css">
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- css -->
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/inquiry.css"
	rel="stylesheet" type="text/css">
<!-- bootstrap -->

<!-- Roboto -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<!-- noto sans KR-->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap"
	rel="stylesheet">
<title>리뷰 작성</title>
<style>
.board_area {
	width: 70%;
	margin: 50px auto 0 auto;
}

.line {
	margin: 5px;
	border-bottom: 1px solid #282A35;
}

.board_content .content {
	margin-bottom: 30px;
}

.input_area {
	border: solid 1px #dadada;
	padding: 10px 10px 14px 10px;
	background: white;
}

.input_area select {
	width: 120px;
	height: 30px;
	border: 0px;
	font-size: large;
	font-weight: bold;
	color: #249698;
}

.input_area input:focus, .input_area select:focus {
	outline: none;
}


.image_area {
	text-align: center;
}

.image_area img {
	width: 100%;
	margin: 10px;
}

.board_area button {
	background-color: #4c5b5d;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	text-align: center;
	font-size: 17px;
	text-decoration: none;
	width: 100px;
	height: 35px;
	justify-self: end;
	margin: 5px;
	cursor: pointer;
}

.board_area button:hover {
	background-color: #249698;
}

.board_area button:active {
	position: relative;
	top: 1px;
}

.btn_area {
	text-align: center;
	border-top: 1px solid #282A35;
	padding: 30px;
}

.score-area {
	width: 100px;
	border: 0;
	padding: 10px 10px 14px 0;
}
</style>
</head>

<body>
	<!-- header -->
	<jsp:include page="../common/menubar.jsp"/>
	
	<div class="title-ar">리뷰 작성</div>
	<div class="subtitle">
		<p></p>
	</div>

	<!-- content -->
	<div class="order-page wrapper">
		<div class="board_area">
			<div class="board_title">
				<h2>상품 리뷰 작성</h2>
			</div>
			<div class="line"></div>
			<div class="board_content">

				<form method="post"
					action="${ pageContext.servletContext.contextPath }/review/insert"
					enctype="multipart/form-data">
					<!-- thumbnail할땐 이거 반드시 작성 -->
					<div id="rv-content">
						<div class="rv-title">주문 상품</div>
						<div>몬스테라</div>
						<div class="rv-title">상품 만족도</div>
						<div class="input_area score-area">
							<label name="score"></label>
							<select name="score" id="score">
								<option value="5" selected>★★★★★</option>
								<option value="4">★★★★</option>
								<option value="3">★★★</option>
								<option value="2">★★</option>
								<option value="1">★</option>
							</select>
						</div>
						<div class="rv-title">제목</div>
						<div>
						<textarea class="textarea" name="title" maxlength="31" rows="1" cols="82" required></textarea>
						</div>

						<div class="rv-title">내용</div>
						<div>
							<textarea class="textarea" rows="20" cols="82" name="content"
							required></textarea>
						</div>
					</div>

					<div id="rv-img">
						<div class="rv-title">대표 이미지 첨부</div>

						<div class="image_area"></div>
						<div class="rv-img-input">
							<input type="file" name="thumbnail"
								accept="image/gif,image/jpeg,image/png" required>
						</div>
						<div class="rv-title">추가 이미지 첨부(최대 2개)</div>

						<div class="image_area"></div>
						<div class="image_area"></div>
						<div class="rv-img-input">
							<input type="file" name="contentImg1"
								accept="image/gif,image/jpeg,image/png"> 
							<input type="file" name="contentImg2"
								accept="image/gif,image/jpeg,image/png">
						</div>
					</div>


					<div class="btn_area">
						<button type="button"
							onclick="location.href='${ pageContext.servletContext.contextPath }/review/list'">목록으로</button>
						<button type="submit">작성하기</button>
					</div>
				</form>
			</div>
		</div>
		<div class="quickmenu">
			<ul>
				<li id="quickmenu"><a href="${ pageContext.servletContext.contextPath }/mypage/intro" style="color: white;">마이페이지</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/mypage/order">주문조회</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/mypage/wish">찜한상품</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/user/modify">회원정보</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/mypage/qna">상품문의</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/review/list">리뷰조회</a></li>
				<li><a href="${ pageContext.servletContext.contextPath }/mypage/coupon">쿠폰조회</a></li>
			</ul>
		</div>
		<footer>
			<p>
				<span>상호: PLANTY | 대표: 김플랜 | 개인정보관리책임자: 김플랜 | 전화:
					070-1234-5678 | 이메일: planty00@naver.com</span><br /> <span>주소:
					서울특별시 플랜구 식물동 159-2 | 사업자등록번호: 151-15-15151 | 통신판매: 2022-서울강남-0000
					| 호스팅제공자: (주)식물샵</span><br />
			</p>
			<nav>
				<a href='../page/policy.html'>이용약관</a> | <a
					href='../page/policy.html'>개인정보처리방침</a>
			</nav>
		</footer>
	</div>

	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/imagePreview.js"></script>
</body>
</html>