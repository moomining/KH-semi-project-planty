<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
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

<style>
.order-status {
	border: 1px solid #4C5B5D;
	justify-content: center;
}
</style>

</head>
<body>
	<!-- header -->
	<jsp:include page="../common/menubar.jsp" />

	<div class="title-ar">마이 페이지</div>
	<div class="subtitle">
		<p></p>
	</div>


	<!-- content -->
	<div class="my-page wrapper">
		<div class="order-status">
			<h3 id="title">나의 주문 처리 현황</h3>
			<br>
			<div class="container">
				<div class="item item1">
					입금전<br>
					<div class="order-num">1</div>
				</div>
				<div class="item item2">
					배송준비중<br>
					<div class="order-num">0</div>
				</div>
				<div class="item item3">
					배송중<br>
					<div class="order-num">0</div>
				</div>
				<div class="item item4">
					배송완료<br>
					<div class="order-num">4</div>
				</div>
			</div>
			<br>
			<hr>
			<div class="my-status">
				<div class="coupon-status">
					<div>쿠폰</div>
					<a href="${ pageContext.servletContext.contextPath }/mypage/coupon"
						class="myButton">조회</a>
				</div>
				<div class="order-sum">
					<div class="sum1">총주문</div>
					<span class="right">102,400 원</span>
				</div>

			</div>

		</div>
		<br>
		<br>
		<form>
			<div class="intro-menu">

				<button class="int-menu int1" type="submit"
					formaction="${ pageContext.servletContext.contextPath }/mypage/order">
					<div id="int-title">ORDER</div>
					<div id="int-subtt">주문 조회</div>
				</button>
				<button class="int-menu int2" type="submit"
					formaction="${ pageContext.servletContext.contextPath }/mypage/wish">
					<div id="int-title">WISH LIST</div>
					<div id="int-subtt">찜하기 조회</div>
				</button>
				<button class="int-menu int3" type="submit"
					formaction="${ pageContext.servletContext.contextPath }/user/modify">
					<div id="int-title">PROFILE</div>
					<div id="int-subtt">회원정보 조회</div>
				</button>
				<button class="int-menu int4" type="submit"
					formaction="${ pageContext.servletContext.contextPath }/mypage/qna">
					<div id="int-title">상품 Q&A</div>
					<div id="int-subtt">상품 문의 조회</div>
				</button>
				<button class="int-menu int5" type="submit"
					formaction="${ pageContext.servletContext.contextPath }/review/list">
					<div id="int-title">REVIEW</div>
					<div id="int-subtt">리뷰 조회</div>
				</button>
				<button class="int-menu int6" type="submit"
					formaction="${ pageContext.servletContext.contextPath }/mypage/coupon">
					<div id="int-title">COUPON</div>
					<div id="int-subtt">쿠폰 조회</div>
				</button>

			</div>
		</form>
		<div class="quickmenu">
			<ul>
				<li id="quickmenu"><a href="${ pageContext.servletContext.contextPath }/mypage/intro" style="color: white;">마이페이지</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/mypage/order">주문조회</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/mypage/wish">찜한상품</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/user/modify">회원정보</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/mypage/qna">상품문의</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/review/list">리뷰조회</a></li>
				<li><a
					href="${ pageContext.servletContext.contextPath }/mypage/coupon">쿠폰조회</a></li>
			</ul>
		</div>
		<script>
			//     $(document).ready(function(){
			//     var currentPosition = parseInt($(".quickmenu").css("top"));

			//     $(window).scroll(function() {
			//         var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
			//         $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},1000);
			//     });
			// });
		</script>

		<pre>
        </pre>
		<footer>
			<p>
				<span>상호: PLANTY | 대표: 김플랜 | 개인정보관리책임자: 김플랜 | 전화:
					070-1234-5678 | 이메일: planty00@naver.com</span><br /> <span>주소:
					서울특별시 플랜구 식물동 159-2 | 사업자등록번호: 151-15-15151 | 통신판매: 2022-서울강남-0000
					| 호스팅제공자: (주)식물샵</span><br />
			</p>
			<nav>
				<a
					href="${ pageContext.servletContext.contextPath }/main/policy.jsp">이용약관</a>
				| <a
					href="${ pageContext.servletContext.contextPath }/main/policy.jsp">개인정보처리방침</a>
			</nav>
		</footer>

	</div>
</body>
</html>