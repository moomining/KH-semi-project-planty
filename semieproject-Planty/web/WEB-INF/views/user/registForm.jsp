<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<title>Planty🌿 회원가입</title>
</head>

<body>
	<!-- header -->
	<jsp:include page="../common/menubar.jsp" />

	<!-- content -->
	<div class="title-ar">회원 가입</div>
	<div class="join-form2 wrapper">
		<form class="mem-type-form" method="get" action="">
			<span id="mem-type">회원유형</span> <label class="mem-slct"><input
				type="checkbox" name="member-type" value="1" checked
				onclick='checkOnlyOne(this); movePage("${ pageContext.servletContext.contextPath }/user/regist2");'>일반
				회원</label> <label class="mem-slct"><input type="checkbox"
				name="member-type" value="2"
				onclick='checkOnlyOne(this); movePage("JOIN-2partner.html");'>사업자
				회원</label>
		</form>
		<div class="kakao-login">
			<h3 class="sub-tt">간편 회원 가입</h3>
			<p>카카오로 1초만에 회원가입하세요.</p>
			<a class="btn-kakao"
				onclick="kakaoLogin('da1224c223577e5a09c518b3d79e51c8')">카카오 1초
				회원가입</a>
		</div>

		<!-- 카카오 스크립트 -->
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
        //카카오로그아웃  
        function kakaoLogout() {
            if (Kakao.Auth.getAccessToken()) {
            Kakao.API.request({
                url: '/v1/user/unlink',
                success: function (response) {
                    console.log(response)
                },
                fail: function (error) {
                console.log(error)
                },
            })
            Kakao.Auth.setAccessToken(undefined)
            }
        }  
        </script>
		<div class="form-join">
			<form id="join-form2"
				action="${ pageContext.servletContext.contextPath }/user/regist2"
				method="post">


				<div class="form-name">아이디</div>
				<span class="input_area"><input type="text" maxlength="20"
					name="id" required placeholder="영문,숫자 조합 20자 이내"></span>
				<button class="join-btn join-btn-style" id="idCheck" type="button">중복확인</button>

				<div class="form-name">비밀번호</div>
				<span class="input_area"><input type="password"
					maxlength="30" name="pwd" required id="pwd"
					placeholder="영문 대소문자/숫자/특수문자 8자~30자"
					onchange="check_pw()"></span>

				<div class="form-name">비밀번호 확인</div>
				<span class="input_area"><input type="password"
					maxlength="30" name="pwd2" id="pwd2" onchange="check_pw()" required></span>&nbsp;<span
					id="check"></span> <label id="pwdResult"></label>

				<div class="form-name">이름</div>
				<span class="input_area"><input type="text" maxlength="10"
					name="name" required></span>

				<div class="form-name">연락처</div>
				<span class="input_area"><input type="tel" maxlength="13"
					name="phone" placeholder="예) 010-1234-5678" oninput="autoHyphen(this)" required></span>

				<div class="form-name">이메일</div>
				<span class="input_area"><input type="email" name="email"
					placeholder="예) planty@naver.com" required></span>

				<div class="form-name">우편번호</div>
				<span class="input_area"><input type="text" id="member_post"
					name="zipcode" class="postcodify_postcode5" readonly></span>
				<button class="join-btn join-btn-style"
					id="postcodify_search_button" type="button" onclick="findAddr();">검색</button>
				<div class="form-name">도로명주소</div>
				<span class="input_area"><input type="text" id="member_addr"
					name="address" class="postcodify_address" readonly></span>
				<div class="form-name">상세주소</div>
				<span class="input_area"><input type="text" name="addrDetail"
					class="postcodify_details" required></span> <input type="hidden"
					value="${ textYn }" name="textYn">
				<div class="btnArea">
					<button class="join-btn-style" id="joinBtn" type="button">가입하기</button>
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

	<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

	<script>
	
		// 전화번호 autoHyphen 삽입 
		const autoHyphen = (target) => {
                target.value = target.value
                    .replace(/[^0-9]/, '')
                    .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
            }
		
        function checkOnlyOne(element) {

            const checkboxes = document.getElementsByName("member-type");
            checkboxes.forEach((cb) => {
                cb.checked = false;
            });

            element.checked = true;
        }
        

        function movePage(page) {
            window.document.location.href = page;
            return;
        }
        
        //id 중복 확인
        $("#idCheck").click(function(){
			// 아이디 중복 시 false, 아이디 사용 가능 시 true --> 유효성 검사를 위한 변수
			let isUsable = false;
			const id = $("[name=id]");
				
			if(!id || id.val().length < 4){
				alert("아이디는 최소 4자리 이상이어야 합니다.");
				id.focus();
			}else {
				// 4자리 이상의 userId 값을 입력했을 경우 $.ajax() 통신 
				$.ajax({
					url : "${ pageContext.servletContext.contextPath }/user/idCheck",
					type : "post",
					data : { id : id.val() },
					success : function(result) {
						console.log(result);
						if (result == "fail") {
							alert("사용할 수 없는 아이디입니다.");
							id.focus();
						} else {
							//alert("사용 가능한 아이디입니다.");
							if (confirm("사용 가능한 아이디입니다. 사용하시겠습니까?")) {
								id.attr('readonly', true); // 더 이상 id 입력 공간을 바꿀 수 없도록
								isUsable = true; // 사용 가능한 아이디라는 flag 값
							} else {
								// confirm 창에서 취소를 누를 경우 (처음, 또는 반복해서)
								id.attr('readonly', false); // 다시 id input태그 수정 가능하도록
								isUsable = false; // 사용 불가능한 아이디 flag
								id.focus();
							}
						}
						// 아이디 중복 체크 후 중복이 아니며 사용하겠다고 선택한 경우
						if (isUsable) {
							$("#joinBtn").attr("type", "submit");
						} else {
							$("#joinBtn").attr("type", "button");
						}
					},
					error : function(e) {
						console.log(e);
					}
				});
			}
		});
        
        function mypage() {
            let signIn = ""
            if (signIn == "") {
                alert("해당 페이지는 로그인 후 사용하실 수 있습니다.");
                location.href = "LOG IN.html";
            } else {
                location.href = "mypage.html";
            }
        }

        function cart() {
            let signIn = ""
            if (signIn == "") {
                alert("해당 페이지는 로그인 후 사용하실 수 있습니다.");
                location.href = "LOG IN.html";
            } else {
                location.href = "cart.html";
            }
        }
        
        <!-- password 체크 -->
        function check_pw(){
        	 
            var pwd = document.getElementById('pwd').value;
            var check_SC = 0;
 
            if(pwd.length < 8 || pwd.length>30){
                window.alert('비밀번호는 8글자 이상, 30글자 이하만 이용 가능합니다.');
                document.getElementById('pwd').value='';
            }
            
            if(document.getElementById('pwd').value !='' && document.getElementById('pwd2').value!=''){
                if(document.getElementById('pwd').value==document.getElementById('pwd2').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
        
    </script>


	<!-- footer -->
	<footer>
    <p>
        <span>상호: PLANTY | 대표: 김플랜 | 개인정보관리책임자: 김플랜 | 전화: 070-1234-5678 | 이메일: planty00@naver.com</span><br/>
        <span>주소: 서울특별시 플랜구 식물동 159-2 | 사업자등록번호: 151-15-15151 | 통신판매: 2022-서울강남-0000 | 호스팅제공자: (주)식물샵</span><br/>
    </p>
    <nav>
        <a href="${ pageContext.servletContext.contextPath }/main/policy.jsp">이용약관</a> |
        <a href="${ pageContext.servletContext.contextPath }/main/policy.jsp">개인정보처리방침</a>
    </nav>
</footer>
</body>

</html>