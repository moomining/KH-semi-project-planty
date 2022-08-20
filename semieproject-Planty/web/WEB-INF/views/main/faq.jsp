<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FAQ</title>
    <link rel="icon" type="image/x-icon" href="${ pageContext.servletContext.contextPath }/resources/image/favi.png" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 
    <link href="${ pageContext.servletContext.contextPath }/resources/css/faq.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
  <jsp:include page="../common/menubar.jsp"/>
<body>
  
  <div class="title">
    <h1>FAQ</h1>
</div>
        
    <main>
        <div class="topic">
          <div class="open">
            <h2 class="question">타 명의의 계좌로 환불</h2>
          </div>
          <p class="answer">
            다른 사람 명의로는 환불할 수 없습니다. 고객님 본인 명의 계좌로만 환불이 가능합니다.
          </p>
        </div>
        <div class="topic">
          <div class="open">
          <h2 class="question">등록한 환불계좌 등록/변경</h2>
          </div>
          <p class="answer">
          마이페이지에서 환불계좌 등록 및 수정이 가능합니다. 환불계좌는 주문자 명의의 본인 계좌만 등록할 수 있습니다. 주문 진행 상태가 '환불진행중' 또는 '환불완료' 에서는 환불계좌를 변경할 수 없습니다.
        </p>
        </div>
        <div class="topic">
          <div class="open">
          <h2 class="question">반품 신청 철회</h2>
          </div>
          <p class="answer">
            반품할 상품을 아직 보내지 않은 경우, 마이페이지에서 반품철회를 하실 수 있습니다. 반품철회 후 택배사에서 상품 수거가 된 것으로 확인될 경우 해당 주문은 반품처리한 것으로 재 변경됩니다.
          </p>
        </div>
        <div class="topic">
          <div class="open">
          <h2 class="question">부재중 반송</h2>
          </div>
          <p class="answer">
            부재 등의 사유로 반송된 상품은 "마이페이지 > 주문 조회"에서 택배사 영업소, 또는 배송 담당 택배원 연락처를 통해 재배송 요청을 할 수 있습니다. 상품이 이미 반송되어 해당 업체로 입고된 경우, 왕복 배송비를 추가 부담하셔야 합니다.
          </p>
        </div>
        <div class="topic">
          <div class="open">
          <h2 class="question">문의 방법</h2>
          </div>
          <p class="answer">
            안녕하십니까? PLANTY 고객센터입니다.
            배송문의는 전화를 통해서 문의하시면 빠르게 답변을 받으실수 있습니다.
         
            [ 고객센터 080-9191-9911 ]
            운영시간
            평일 : AM 11:00 - PM 4:00
            토요일:AM 11:00 - PM 02:00
            (일휴무,공휴일 휴무)
          </p>
        </div>

      </main>

      <script>
        $(".open").click( function () {
        var container = $(this).parents(".topic");
        var answer = container.find(".answer");
  
       answer.slideToggle(200);
  
      if (trigger.hasClass("faq-o")) {
      trigger.removeClass("faq-o");
      }
      else {
      trigger.addClass("faq-o");
     }
  
      if (container.hasClass("expanded")) {
      container.removeClass("expanded");
      }
      else {
      container.addClass("expanded");
      } 
      });
      </script>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<footer>
    <p>
        <span>상호: PLANTY | 대표: 김플랜 | 개인정보관리책임자: 김플랜 | 전화: 070-1234-5678 | 이메일: planty00@naver.com</span><br/>
        <span>주소: 서울특별시 플랜구 식물동 159-2 | 사업자등록번호: 151-15-15151 | 통신판매: 2022-서울강남-0000 | 호스팅제공자: (주)식물샵</span><br/>
    </p>
    <nav>
        <a href="${ pageContext.servletContext.contextPath }/main/policy">이용약관</a> |
        <a href="${ pageContext.servletContext.contextPath }/main/policy">개인정보처리방침</a>
    </nav>
</footer>
</html>