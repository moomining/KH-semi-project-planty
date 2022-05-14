<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin-menubar</title>
<link href="${ pageContext.servletContext.contextPath }/resources/css/admin-styles.css" rel="stylesheet">
</head>
<body class="sb-nav-fixed">
  <nav class="sb-topnav navbar navbar-expand navbar-light bg-light">
    <!-- Navbar Brand-->
    <div class="planty_logo">
      <img src="${ pageContext.servletContext.contextPath }/resources/image/planty_logo.png">
    </div>

  </nav>
  <div id="layoutSidenav">
    <div id="layoutSidenav_nav">
      <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
          <div class="nav">
            <div class="sb-sidenav-menu-heading">ADMIN PAGE</div>
            <a class="nav-link collapsed" href="#">
              회원관리
            </a>
            <a class="nav-link collapsed" href="#">
              쿠폰
            </a>
            <a class="nav-link collapsed" href="#">
              매출
            </a>
            <a class="nav-link collapsed" href="#">
              리뷰
            </a>
            <a class="nav-link collapsed" href="#">
              고객센터
            </a>

          </div>
        </div>

        <div class="sb-sidenav-footer">
          <div class="small">Logged in as:</div>
          관리자 
          <button type="button" class="btn btn-light" id="logout_bt">Logout</button> 
        </div>
        
      </nav>
    </div>
    

  </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
  <script src="js/scripts.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
</body>
</html>