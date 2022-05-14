<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<style>

	* {
		color: #4C5B5D;
	}
	.outer{
		width:90%;
		min-width : 450px;
		margin:auto;
	}
	
	.outer h1 {
		text-align:center;
	}
	
	#updatePwdForm {
		width : 300px;
		margin: 40px auto 0 auto;
	}
	
	.input_area {
	    border: solid 1px #dadada;
	    padding : 10px 10px 14px 10px;
	    background : white;
	}
	
	.input_area input:focus {
		outline: none;
	}
	
	.input_area input{
		width : 270px;
		height : 30px;
		border: 0px;
	}
	
	.btnArea {
		text-align:center;
		padding : 30px;
	}
	
	button:hover {
		cursor:pointer
	}
	
	button {
		width: 100px;
		height: 35px;
		border: 0px;
		color: white;
		background: #249698;
		margin: 5px;
		cursor: pointer;
}
	}
</style>
</head>
<body>
	<div class="outer">
	<br>
	<h1>비밀번호 변경</h1>
	
	<form id="updatePwdForm" action="${ pageContext.servletContext.contextPath }/user/modifyPwd"
	method="post" onsubmit="return checkPassword();">
				<h4>현재 비밀번호</h4>
				<span class="input_area">
				<input type="password" name="checkPwd" id="checkPwd" maxlength="30">
				</span>
				<h4>변경할 비밀번호</h4>
				<span class="input_area">
				<input type="password" onchange="check_pw()" name="pwd" id="pwd" maxlength="30" placeholder="영문 대소문자/숫자/특수문자 8자~30자">
				</span>
				<h4>변경할 비밀번호 확인</h4>
				<span class="input_area">
				<input type="password" onchange="check_pw()" name="pwd2" id="pwd2" maxlength="30">
				</span>
			<div class="btnArea">
				<button id="updatePwdBtn">변경하기</button>
			</div>
	</form>
	</div>
	<script>
	
		function checkPassword(){
			const checkPwd = document.getElementById('checkPwd');
			const memberPwd = document.getElementById('memberPwd');
			const memberPwd2 = document.getElementById('memberPwd2');
			
			if(checkPwd.value == "" || memberPwd.value == "" || memberPwd2.value == ""){
				alert("비밀번호를 입력해주세요.");
				return false;
			}
			
			if(memberPwd.value != memberPwd2.value){
				alert("비밀번호가 다릅니다.");
				memberPwd2.select();
				return false;
			}
			
			return true;
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
	
</body>
</html>