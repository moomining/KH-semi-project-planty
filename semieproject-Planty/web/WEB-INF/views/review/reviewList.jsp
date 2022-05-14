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

	<div class="title-ar">리뷰 조회</div>
	<div class="subtitle">
		<p></p>
	</div>

	<!-- content -->
	<div class="order-page wrapper">

		<!-- ------ 리뷰 조회 섹션 ------- -->
		<div class="order-list">
			<div class="board_list">
				<ul class="board_header">
					<li class="rev-img">리뷰이미지</li>
					<li class="rev-proinfo">상품정보</li>
					<li class="rev-score">별점</li>
					<li class="rev-title">제목</li>
					<li class="date">작성일</li>
				</ul>
					<c:forEach var="review" items="${ reviewList }">
						<ul class="board_ul" id="toc-toggle" onclick="openCloseToc(this);">
							<li class="rev-img">
								<div class="rev-thumb">
									<a href="#"> <img
										src="${ pageContext.servletContext.contextPath }${ review.attachmentList[0].thumPath }"
										alt="review_thumb" width="100%" height="100%"
										class="thumb-ctrl">
									</a>
								</div>
							</li>
							<li class="rev-proinfo">
								<!-- <p>
                                <a class="big-cate" href="">허브  ${ category.cate_a }</a>
                            </p> -->
								<p>
									<a class="pro-name" href="">${ review.order.product.pro_name }</a>
								</p>
							</li>
							<li class="rev-score">
							<c:forEach var="score" begin="1"
									end="${ review.score }">★</c:forEach></li>
							<li class="rev-title">${ review.title }</li>
							<li class="date">${ review.date }</li>
						</ul>
						<div class="toc-content" style="display:none;">
							<div class="content">
								<div class="image_area">
									<c:forEach items="${ review.attachmentList }" var="attachment">
										<div class="photoList">
											<img
												src="${ pageContext.servletContext.contextPath }${ attachment.savePath }${ attachment.savedName }">
											<p>${ attachment.orgName }</p>
										</div>
									</c:forEach>
								</div>
								<div class="rev-content">${ review.content }</div>
							</div>
						</div>
					</c:forEach>
			</div>

		</div>
		<script>
		function openCloseToc(elem) {
				
				if(elem.nextElementSibling.style.display == 'block'){
					elem.nextElementSibling.style.display = 'none';
				} else {
					elem.nextElementSibling.style.display = 'block';
				}
				
			
			}
		
		
		</script>

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
		<br>
		<br>

	<!-- ------미작성 리뷰 조회 섹션 ------- -->
	<div class="title-ar">미작성 리뷰 조회</div>
	<table class="order-table" summary>
		<colgroup>
			<col style="width: 200px">
			<col style="width: 200px">
			<col style="width: auto">
			<col style="width: 135px">
			<col style="width: 200px">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">주문번호</th>
				<th scope="col">주문일자</th>
				<th scope="col">상품정보</th>
				<th scope="col">주문금액(수량)</th>
				<th scope="col">선택</th>
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
						<div>
							<form method="get"
								action="${ pageContext.servletContext.contextPath }/review/insert">
								<button type="submit" class="order-btn">작성</button>
							</form>
						</div>
					</td>

				</tr>
		</tbody>
	</table>



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