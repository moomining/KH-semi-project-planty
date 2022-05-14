
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>failed</title>
<style>
	#imageArea{
		width : 500px;
		height : 300px;
		margin : 100px auto;
		display : flex;
		justify-content : center;
		align-items : center;
	}
	#imageArea img {
		width : auto;
		height : 100%;
	}
	
	h1 {
		margin: -80px;
	}
	
	#bttmArea {
		margin : 100px;
		display : flex;
		justify-content : center;
		align-items : center;
	}
	
	#error-bttm {
		width : 700px;
		height: 113px;
	
	}

</style>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <!-- css -->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/member.css" rel="stylesheet" type="text/css">
    <!-- bootstrap -->

    <!-- Roboto -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- noto sans KR-->
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;700&display=swap" rel="stylesheet">


</head>
<body>
  
		<jsp:include page="../common/menubar.jsp"/>
	
  <div id="imageArea">
		<img id="errorImage" src="${ pageContext.servletContext.contextPath }/resources/image/error-cloud.png" alt="error">
	</div>
	<h1 align="center">${ requestScope.message }</h1>
	<div id="bttmArea">
		<img id="error-bttm" src="${ pageContext.servletContext.contextPath }/resources/image/error-bttm.png" alt="error">
	</div>

</body>
</html>