
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error404</title>
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
	<h1 align="center">페이지를 찾을 수 없어요</h1>
</body>
</html>