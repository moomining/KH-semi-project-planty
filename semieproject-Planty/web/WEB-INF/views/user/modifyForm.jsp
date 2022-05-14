<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- css -->
<link
	href="${ pageContext.servletContext.contextPath }/resources/css/member.css"
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

<title>회원정보 수정</title>
</head>

<body>
	<!-- header -->
	<jsp:include page="../common/menubar.jsp" />

	<!-- content -->
	<div class="title-ar">회원 정보 수정</div>
	<div class="join-form2 wrapper">

		<div class="form-join">
			<form id="join-form3"
				action="${ pageContext.servletContext.contextPath }/user/modify"
				method="post">

				<div class="form-name">아이디</div>
				<span class="input_area"><input type="text" maxlength="20"
					name="id" value="${ loginUser.id }" readonly
					placeholder="영문,숫자 조합 20자 이내"></span>

				<div class="form-name">비밀번호</div>
				<span><button class="btn-pwd-connect" id="pwd-connect"
						type="button"
						onclick="openPopup('${ pageContext.servletContext.contextPath }/user/modifyPwd', 'modifyPwd', 500, 500);">비밀번호
						변경</button></span>

				<div class="form-name">이름</div>
				<span class="input_area"><input type="text" maxlength="10"
					name="name" value="${ loginUser.name }" readonly></span>

				<div class="form-name">연락처</div>
				<span class="input_area"><input type="tel" maxlength="13"
					name="phone" value="${ loginUser.phone }"
					placeholder="예) 010-1234-5678" required></span>

				<div class="form-name">이메일</div>
				<span class="input_area"><input type="email" name="email"
					value="${ loginUser.email }" placeholder="예) planty@naver.com"
					required></span>

				<div class="form-name">우편번호</div>
				<span class="input_area"><input type="text" id="member_post"
					name="zipcode" class="postcodify_postcode5"
					value="${ loginUser.zipcode }" readonly></span>
				<button class="join-btn join-btn-style"
					id="postcodify_search_button" type="button" onclick="findAddr();">검색</button>
				<div class="form-name">도로명주소</div>
				<span class="input_area"><input type="text" id="member_addr"
					name="address" class="postcodify_address"
					value="${ loginUser.address }" readonly></span>
				<div class="form-name">상세주소</div>
				<span class="input_area"><input type="text" name="addrDetail"
					class="postcodify_details" value="${ loginUser.addrDetail }"
					required></span>
				<div class="btnArea">
					<button class="join-btn-style" id="joinBtn" type="submit">수정하기</button>
					<button class="del-btn-style" type="button"
						onclick="confirmRemove();">탈퇴하기</button>
				</div>
			</form>


		</div>

	</div>

	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
        function findAddr(){
            new daum.Postcode({
                oncomplete: function(data) {
                    
                    console.log(data);
                    
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var jibunAddr = data.jibunAddress; // 지번 주소 변수
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('member_post').value = data.zonecode;
                    if(roadAddr !== ''){
                        document.getElementById("member_addr").value = roadAddr;
                    } 
                    else if(jibunAddr !== ''){
                        document.getElementById("member_addr").value = jibunAddr;
                    }
                }
            }).open();
        }
    </script>

	<script>

        // 사용자 입력 값 유효성 검사
        function validate() {
            return true;
        }

        // 팝업창 호출
        function openPopup(url, title, width, height) {
            //뜨는 위치 설정 
            let left = (document.body.clientWidth / 2) - (width / 2);
            left += window.screenLeft;	 // 듀얼 모니터
            let top = (screen.availHeight / 2) - (height / 2);

            let options = "width=" + width + ",height=" + height + ",left=" + left + ",top=" + top;

            window.open(url, title, options);
        }

        // 탈퇴하기 버튼 이벤트 핸들러 function
        function confirmRemove() {
            if (confirm("정말로 탈퇴하시겠습니까? '확인' 버튼 클릭후 취소할 수 없습니다.")) {
                location.href = "${ pageContext.servletContext.contextPath }/user/remove";
            }
        }
    </script>

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
				href="${ pageContext.servletContext.contextPath }/myapge/coupon">쿠폰조회</a></li>
		</ul>
	</div>

	<!-- footer -->
	<footer>
		<p>
			<span>상호: PLANTY | 대표: 김플랜 | 개인정보관리책임자: 김플랜 | 전화:
				070-1234-5678 | 이메일: planty00@naver.com</span><br /> <span>주소:
				서울특별시 플랜구 식물동 159-2 | 사업자등록번호: 151-15-15151 | 통신판매: 2022-서울강남-0000 |
				호스팅제공자: (주)식물샵</span><br />
		</p>
		<nav>
			<a href='../page/policy.html'>이용약관</a> | <a
				href='../page/policy.html'>개인정보처리방침</a>
		</nav>
	</footer>
</body>

</html>