<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>리뷰 조회</title>
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
	<div class="title-ar">주문 조회</div>
	<!-- content -->
	<div class="order-page wrapper">
		<div class="selection-area">
			<fieldset id="order-selection-f">
				<legend>검색 기간 설정</legend>
				<div class="box-ele">
					<span class="order-selection"> <select class="order-sel"
						id="s-order" onchange="location.href=this.value">
							<option value="all" disabled selected>전체 주문처리상태</option>
							<option value="shipped-before">입금전</option>
							<option value="shipped-standby">배송준비중</option>
							<option value="shipped-standby">배송중</option>
							<option value="shipped-complete">배송완료</option>

					</select>
					</span> <span class="period">
						<button class="btn-date" days="00" formaction="">오늘</button>
						<button class="btn-date" days="07" formaction="">1주일</button>
						<button class="btn-date" days="30" formaction="">1개월</button>
						<button class="btn-date" days="90" formaction="">3개월</button>
						<button class="btn-date" days="180" formaction="">6개월</button>
					</span>
					<!-- <div class="history-date"> -->
					<input type="date" id="start-date"> &nbsp;-&nbsp; <input
						type="date" id="end-date">
					<button class="btn-submit" formaction="">조회</button>

					<!-- </div> -->
				</div>
			</fieldset>
		</div>


		<table class="order-table" summary>
			<colgroup>
				<col style="width: 200px">
				<col style="width: 200px">
				<col style="width: auto">
				<col style="width: 135px">
				<col style="width: 160px">
				<col style="width: 160px">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">주문번호</th>
					<th scope="col">주문일자</th>
					<th scope="col">상품정보</th>
					<th scope="col">주문금액(수량)</th>
					<th scope="col">결제상태</th>
					<th scope="col">배송상태</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="no"><a href="" class="line">22032011</a></td>
					<td class="date">
						<p>
						<p>2022-03-20</p>
						</p>
					</td>
					<td class="product left">

						<p>
							<a class="pro-name" href="">몬스테라</a>
						</p>
					</td>
					<td>
						<p class="amount">34800원</p>
						<p class="number">1개</p>
					</td>
					<td class="rev-option2">
						<div>결제완료</div>
					</td>
					<td class="rev-option2">
						<div>배송완료</div>
					</td>

				</tr>
				<c:forEach var="order" items="${ orderList }">
					<tr>
						<td class="no"><a href="" class="line">${ order.ordNo }</a></td>
						<td class="date">
							<p>
							<p>${ order.orderDetail.ordDate }</p>
							</p>
						</td>
						<td class="product left">

							<p>
								<a class="pro-name" href="">${ order.product.pro_name }</a>
							</p>
						</td>
						<td>
							<p class="amount">${ order.product.pro_price }원</p>
							<p class="number">${ order.amount }개</p>
						</td>
						<td class="rev-option2">
							<div>${ order.orderDetail.ordState }</div>
						</td>
						<td class="rev-option2">
							<div>${ order.orderDetail.ordDelivery }</div>
						</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

		<div class="quickmenu">
			<ul>
				<li id="quickmenu"><a
					href="${ pageContext.servletContext.contextPath }/mypage/intro"
					style="color: white;">마이페이지</a></li>
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

</body>
</html>