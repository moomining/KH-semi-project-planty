<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>회원관리</title>
    <link href="${ pageContext.servletContext.contextPath }/resources/css/admin-styles.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
      crossorigin="anonymous"></script>
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
      
      <div id="layoutSidenav_content">
        <main id="cst-table">
          <h4>회원관리</h4>
          <hr>
          <table class="table">
  
            <select class="form-select" >
              <option selected >전체회원</option>
              <option value="1">일반회원</option>
              <option value="2">파트너</option>
            </select>
            <thead>
              <tr>
                <th scope="col"><input type="checkbox" name="nb[]" value="01">  회원유형</th>                
                <th scope="col">아이디</th>
                <th scope="col">이름</th>
                <th scope="col">이메일</th>
                <th scope="col">휴대폰번호</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="u" items="${ userList }">
            <tr>
                <td scope="row">
                  <p><label><input type="checkbox" name="nb[]" value="01">  ${ u.authno }</label></p>
                </td>
                <td>${ u.id }</td>
                <td>${ u.name }</td>
                <td>${ u.email }</td>
                <td>${ u.phone }</td>
            </tr>
            </c:forEach>
           
                
  
            </tbody>
          </table>
          <button type="button" class="btn btn-secondary">회원탈퇴</button>
        </main>
        <footer class="py-4 bg-light mt-auto">
          <div class="container-fluid px-4">
            <div class="d-flex align-items-center justify-content-between small">
              <div class="text-muted">Copyright &copy; Planty 2022</div>
            </div>
          </div>
        </footer>
      </div>
  
    </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
  </body>
  
  </html>