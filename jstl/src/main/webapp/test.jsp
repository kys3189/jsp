<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 테스트</title>
</head>
<body>
	<!-- 쿼리스트링값은 파람 영역에 보관된다. -->
	<!-- 

	<h1>값을 받았는지 테스트!</h1>
	
	<h1>${param.name}</h1>
	
	<h1>${name}</h1>
	
	<c:if test = "${name == '홍길동'}">
		<h1>${name}</h1>
	</c:if>

	<c:choose>
		<c:when test="${name == '홍길동'}">
			<h1>${name}은 의적</h1>
		</c:when>
		<c:when test="${name == '김동건'}">
			<h1>${name}은 장동건</h1>
		</c:when>
		<c:when test="${name == '이덕준'}">
			<h1>영앤리치 ${name}</h1>
		</c:when>
		<c:otherwise>
			<h1>다 아님</h1>
		</c:otherwise>
	</c:choose>
	
	 -->
	
	
	<!-- 

	<c:forEach var="i" begin="1" end="10" step="1">
		${i}	
	</c:forEach>
	
	<c:forEach var="data" items="${chars}">
		<h1>
			${data}
		</h1>
	</c:forEach>
	
	<c:forEach var="data" items="${datas}">
    	<h1>
       		<c:out value="${data}"></c:out>
    	</h1>
   	</c:forEach>
	
	 -->
	<%-- 
	
	<c:if test="${products.size() > 0}">
		<c:forEach var="product" items="${products}">
		 							<!-- 게터,세터를 만들어서 생략하고 필드값으로 가져올 수 있다. -->
		 	<div>
			 	<span>상품 명 : </span><c:out value="${product.productName}" escapeXml="true"></c:out>
		 	</div>
		 	<div>
			 	<span>상품 가격 : </span><c:out value="${product.productPrice}"></c:out>
			</div>
		</c:forEach>
	</c:if>
	<c:if test="${products.size() == 0}">
		<h1>게시글이 없습니다.</h1>
	</c:if> 
	
	--%>
	
</body>
<script type="text/javascript">
	/* console.log(${products}) */
	/* const products = JSON.parse(${products}); 제이슨 객체로 가져오면 변환해줘야함 업데이트 되서 필요없어졌나?*/
	const products = ${products};
	console.log(products)
	products.forEach((product) => {
		document.write("상품 이름" + product.productName)
		/* document.write(`상품 이름 ${product.productName}`) JSTL에서는 템플릿 리턴 방식을 사용불가 */
	})
</script>	
</html>