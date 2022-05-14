
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error403</title>
<style>
	#imageArea{
		width : 500px;
		margin : 100px auto;
		display : flex;
		justify-content : center;
		align-items : center;
	}
	#imageArea img {
		width : 100%;
	}
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div id="imageArea">
		<img id="errorImage" src="${ pageContext.servletContext.contextPath }/resources/img/error.png">
	</div>
	<h1 align="center">요청 권한이 없는 페이지 입니다</h1>
</body>
</html>