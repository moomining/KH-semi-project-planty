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

<title>PlantyπΏ νμκ°μ</title>
</head>

<body>
	<!-- header -->
	<jsp:include page="../common/menubar.jsp" />

	<!-- content -->
	<div class="title-ar">νμ κ°μ</div>
	<div class="join-form2 wrapper">
		<form class="mem-type-form" method="get" action="">
			<span id="mem-type">νμμ ν</span> <label class="mem-slct"><input
				type="checkbox" name="member-type" value="1" checked
				onclick='checkOnlyOne(this); movePage("${ pageContext.servletContext.contextPath }/user/regist2");'>μΌλ°
				νμ</label> <label class="mem-slct"><input type="checkbox"
				name="member-type" value="2"
				onclick='checkOnlyOne(this); movePage("JOIN-2partner.html");'>μ¬μμ
				νμ</label>
		</form>
		<div class="kakao-login">
			<h3 class="sub-tt">κ°νΈ νμ κ°μ</h3>
			<p>μΉ΄μΉ΄μ€λ‘ 1μ΄λ§μ νμκ°μνμΈμ.</p>
			<a class="btn-kakao"
				onclick="kakaoLogin('da1224c223577e5a09c518b3d79e51c8')">μΉ΄μΉ΄μ€ 1μ΄
				νμκ°μ</a>
		</div>

		<!-- μΉ΄μΉ΄μ€ μ€ν¬λ¦½νΈ -->
		<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
		<script>
        Kakao.init('da1224c223577e5a09c518b3d79e51c8'); //λ°κΈλ°μ ν€ μ€ javascriptν€λ₯Ό μ¬μ©ν΄μ€λ€.
        console.log(Kakao.isInitialized()); // sdkμ΄κΈ°νμ¬λΆνλ¨
        //μΉ΄μΉ΄μ€λ‘κ·ΈμΈ
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
        //μΉ΄μΉ΄μ€λ‘κ·Έμμ  
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


				<div class="form-name">μμ΄λ</div>
				<span class="input_area"><input type="text" maxlength="20"
					name="id" required placeholder="μλ¬Έ,μ«μ μ‘°ν© 20μ μ΄λ΄"></span>
				<button class="join-btn join-btn-style" id="idCheck" type="button">μ€λ³΅νμΈ</button>

				<div class="form-name">λΉλ°λ²νΈ</div>
				<span class="input_area"><input type="password"
					maxlength="30" name="pwd" required id="pwd"
					placeholder="μλ¬Έ λμλ¬Έμ/μ«μ/νΉμλ¬Έμ 8μ~30μ"
					onchange="check_pw()"></span>

				<div class="form-name">λΉλ°λ²νΈ νμΈ</div>
				<span class="input_area"><input type="password"
					maxlength="30" name="pwd2" id="pwd2" onchange="check_pw()" required></span>&nbsp;<span
					id="check"></span> <label id="pwdResult"></label>

				<div class="form-name">μ΄λ¦</div>
				<span class="input_area"><input type="text" maxlength="10"
					name="name" required></span>

				<div class="form-name">μ°λ½μ²</div>
				<span class="input_area"><input type="tel" maxlength="13"
					name="phone" placeholder="μ) 010-1234-5678" oninput="autoHyphen(this)" required></span>

				<div class="form-name">μ΄λ©μΌ</div>
				<span class="input_area"><input type="email" name="email"
					placeholder="μ) planty@naver.com" required></span>

				<div class="form-name">μ°νΈλ²νΈ</div>
				<span class="input_area"><input type="text" id="member_post"
					name="zipcode" class="postcodify_postcode5" readonly></span>
				<button class="join-btn join-btn-style"
					id="postcodify_search_button" type="button" onclick="findAddr();">κ²μ</button>
				<div class="form-name">λλ‘λͺμ£Όμ</div>
				<span class="input_area"><input type="text" id="member_addr"
					name="address" class="postcodify_address" readonly></span>
				<div class="form-name">μμΈμ£Όμ</div>
				<span class="input_area"><input type="text" name="addrDetail"
					class="postcodify_details" required></span> <input type="hidden"
					value="${ textYn }" name="textYn">
				<div class="btnArea">
					<button class="join-btn-style" id="joinBtn" type="button">κ°μνκΈ°</button>
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
                    
                    // νμμμ κ²μκ²°κ³Ό ν­λͺ©μ ν΄λ¦­νμλ μ€νν  μ½λλ₯Ό μμ±νλ λΆλΆ.
                    // λλ‘λͺ μ£Όμμ λΈμΆ κ·μΉμ λ°λΌ μ£Όμλ₯Ό νμνλ€.
                    // λ΄λ €μ€λ λ³μκ° κ°μ΄ μλ κ²½μ°μ κ³΅λ°±('')κ°μ κ°μ§λ―λ‘, μ΄λ₯Ό μ°Έκ³ νμ¬ λΆκΈ° νλ€.
                    var roadAddr = data.roadAddress; // λλ‘λͺ μ£Όμ λ³μ
                    var jibunAddr = data.jibunAddress; // μ§λ² μ£Όμ λ³μ
                    // μ°νΈλ²νΈμ μ£Όμ μ λ³΄λ₯Ό ν΄λΉ νλμ λ£λλ€.
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
	
		// μ νλ²νΈ autoHyphen μ½μ 
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
        
        //id μ€λ³΅ νμΈ
        $("#idCheck").click(function(){
			// μμ΄λ μ€λ³΅ μ false, μμ΄λ μ¬μ© κ°λ₯ μ true --> μ ν¨μ± κ²μ¬λ₯Ό μν λ³μ
			let isUsable = false;
			const id = $("[name=id]");
				
			if(!id || id.val().length < 4){
				alert("μμ΄λλ μ΅μ 4μλ¦¬ μ΄μμ΄μ΄μΌ ν©λλ€.");
				id.focus();
			}else {
				// 4μλ¦¬ μ΄μμ userId κ°μ μλ ₯νμ κ²½μ° $.ajax() ν΅μ  
				$.ajax({
					url : "${ pageContext.servletContext.contextPath }/user/idCheck",
					type : "post",
					data : { id : id.val() },
					success : function(result) {
						console.log(result);
						if (result == "fail") {
							alert("μ¬μ©ν  μ μλ μμ΄λμλλ€.");
							id.focus();
						} else {
							//alert("μ¬μ© κ°λ₯ν μμ΄λμλλ€.");
							if (confirm("μ¬μ© κ°λ₯ν μμ΄λμλλ€. μ¬μ©νμκ² μ΅λκΉ?")) {
								id.attr('readonly', true); // λ μ΄μ id μλ ₯ κ³΅κ°μ λ°κΏ μ μλλ‘
								isUsable = true; // μ¬μ© κ°λ₯ν μμ΄λλΌλ flag κ°
							} else {
								// confirm μ°½μμ μ·¨μλ₯Ό λλ₯Ό κ²½μ° (μ²μ, λλ λ°λ³΅ν΄μ)
								id.attr('readonly', false); // λ€μ id inputνκ·Έ μμ  κ°λ₯νλλ‘
								isUsable = false; // μ¬μ© λΆκ°λ₯ν μμ΄λ flag
								id.focus();
							}
						}
						// μμ΄λ μ€λ³΅ μ²΄ν¬ ν μ€λ³΅μ΄ μλλ©° μ¬μ©νκ² λ€κ³  μ νν κ²½μ°
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
                alert("ν΄λΉ νμ΄μ§λ λ‘κ·ΈμΈ ν μ¬μ©νμ€ μ μμ΅λλ€.");
                location.href = "LOG IN.html";
            } else {
                location.href = "mypage.html";
            }
        }

        function cart() {
            let signIn = ""
            if (signIn == "") {
                alert("ν΄λΉ νμ΄μ§λ λ‘κ·ΈμΈ ν μ¬μ©νμ€ μ μμ΅λλ€.");
                location.href = "LOG IN.html";
            } else {
                location.href = "cart.html";
            }
        }
        
        <!-- password μ²΄ν¬ -->
        function check_pw(){
        	 
            var pwd = document.getElementById('pwd').value;
            var check_SC = 0;
 
            if(pwd.length < 8 || pwd.length>30){
                window.alert('λΉλ°λ²νΈλ 8κΈμ μ΄μ, 30κΈμ μ΄νλ§ μ΄μ© κ°λ₯ν©λλ€.');
                document.getElementById('pwd').value='';
            }
            
            if(document.getElementById('pwd').value !='' && document.getElementById('pwd2').value!=''){
                if(document.getElementById('pwd').value==document.getElementById('pwd2').value){
                    document.getElementById('check').innerHTML='λΉλ°λ²νΈκ° μΌμΉν©λλ€.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='λΉλ°λ²νΈκ° μΌμΉνμ§ μμ΅λλ€.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
        
    </script>


	<!-- footer -->
	<footer>
    <p>
        <span>μνΈ: PLANTY | λν: κΉνλ | κ°μΈμ λ³΄κ΄λ¦¬μ±μμ: κΉνλ | μ ν: 070-1234-5678 | μ΄λ©μΌ: planty00@naver.com</span><br/>
        <span>μ£Όμ: μμΈνΉλ³μ νλκ΅¬ μλ¬Όλ 159-2 | μ¬μμλ±λ‘λ²νΈ: 151-15-15151 | ν΅μ νλ§€: 2022-μμΈκ°λ¨-0000 | νΈμ€νμ κ³΅μ: (μ£Ό)μλ¬Όμ΅</span><br/>
    </p>
    <nav>
        <a href="${ pageContext.servletContext.contextPath }/main/policy.jsp">μ΄μ©μ½κ΄</a> |
        <a href="${ pageContext.servletContext.contextPath }/main/policy.jsp">κ°μΈμ λ³΄μ²λ¦¬λ°©μΉ¨</a>
    </nav>
</footer>
</body>

</html>