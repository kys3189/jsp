<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!--  
      15분
      두 수를 입력 받고, 두 수를 더한 결과값이 홀수인지 짝수인지
      서블릿을 통해 응답해주는 페이지 구현 (MyServlet)
      단, 두 수는 모두 유효성 검사가 필요하다.   
   -->
   <form method="get" action="home">
      <input name="num1" placeholder="첫 번째 정수를 입력하세요." />
      <input name="num2" placeholder="두 번째 정수를 입력하세요." />
      <button id="submit-button" type="button">전송</button>      
   </form>

</body>
<script type="text/javascript">
   const button = document.getElementById("submit-button");
   const num1 = document.querySelector("input[name='num1']");
   const num2 = document.querySelector("input[name='num2']");
   /* 타입검증 typeOf */
   button.addEventListener("click", () => {
      if(!num1.value){
         alert('첫 번째 정수를 입력하세요. \nex)10')
         return;
      }
      if(!num2.value){
         alert('두 번째 정수를 입력하세요. \nex)10')
         return;
      }
      document.querySelector('form').submit()
   })

</script>
</html>