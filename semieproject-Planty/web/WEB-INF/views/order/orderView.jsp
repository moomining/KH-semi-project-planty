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


	<!-- ------미작성 리뷰 조회 섹션 ------- -->

	<div class="title-ar">미작성 리뷰 조회</div>

	<table class="order-table" summary>
		<colgroup>
			<col style="width: 200px">
			<col style="width: 200px">
			<col style="width: 125px">
			<col style="width: auto">
			<col style="width: 135px">
			<col style="width: 200px">
		</colgroup>
		<thead>
			<tr>
				<th scope="col">주문번호</th>
				<th scope="col">주문일자</th>
				<th scope="col">이미지</th>
				<th scope="col">상품정보</th>
				<th scope="col">주문금액(수량)</th>
				<th scope="col">선택</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="order" items="${ orderList }">
				<tr>
					<td class="no"><a href="" class="line">${ order.ordNo }</a></td>
					<td class="date">
						<p>
						<p>${ order.orderDetail.ordDate }</p>
						</p>
					</td>
					<td>
						<div class="rev-thumb">
							<a href=""> <img
								src="../mystyle/image/josephine-lityo-unsplash-lavender_proIMG.jpg"
								alt="product_thumbnail" width="100%" height="100%">
							</a>
						</div>
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
						<div>
							<form method="get"
								action="${ pageContext.servletContext.contextPath }/review/insert">
								<button type="submit" class="order-btn">작성</button>
							</form>
						</div>
					</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>




</body>
</html>