<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <title>추천상품</title>
    <link rel="stylesheet" href="../../CSS/eventNpackage.css">
    <script>window.onbeforeunload=() => window.scrollTo(0, 0)</script>
</head>

<body>
    <%@ include file="../common/nav.jspf" %>
	<section class="content best-product">
		<h3>추천상품</h3>
		<div class="tab-menu1">
			<ul class="clearfix">
				<li class="col-fourth on" id='tab-1'><a href="#none" onclick="return false;">한국</a></li>
				<li class="col-fourth" id='tab-2'><a href="#none" onclick="return false;">아시아</a></li>
				<li class="col-fourth" id='tab-3'><a href="#none" onclick="return false;">유럽</a></li>
				<li class="col-fourth" id='tab-4'><a href="#none" onclick="return false;">미주</a></li>
			</ul>
		</div>

	<c:forEach var="j" begin="${1 }" end="${4 }" step="${1 }"  >
		<c:if test="${j == 1 }">
			<div id="tab-${j }-container" class="tab-content-container">
		</c:if>
		<c:if test="${j != 1 }">
			<div id="tab-${j }-container" class="tab-content-container hidden">
		</c:if>
			<c:set var="i" value="${1}" />
			<c:forEach var="vo" items="${lst }">
				<c:if test="${i%2 == 1 }">
				    <div id="tab-${j }-product-${i }" class="row product-wrapper">
				</c:if>

				<c:if test="${i%2 == 0 }">
				    <div id="tab-${j }-product-${i }" class="row product-wrapper change-order">
				</c:if>
					<div class="col-three-fourth img-wrapper">
						<img src="<%=request.getContextPath()%>${vo.cityImg}">
					</div>
					<div class="col-fourth product-info-wrapper">
						<p>0${i }</p>
						<p>${vo.city}</p>
						<p>
							GAZA AIR만의<br />특별한 혜택!<br />지금바로 만나보세요
						</p>
						<a href="<%=request.getContextPath()%>/Resources/JSP/flight/booking/booking1.do?city=${v.city}&iata=${v.IATA}"><button class="btn-booking blueBtn">예약하기</button></a>
					</div>
				</div>
			<c:set var="i" value="${i+1}" />
			</c:forEach>
		</div>
	</c:forEach>
	</section>
    <%@ include file="../common/footer.jspf" %>
    
	<script>
        tabEvent('.tab-menu1');
    </script>
</body>
</html>