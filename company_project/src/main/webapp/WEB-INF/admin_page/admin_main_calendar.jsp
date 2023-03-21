<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 근태 확인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_calender.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 왼쪽 아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 왼쪽 아이콘 끝 -->

			<!-- 왼쪽 메인 화면 시작 -->
			<div class="left-container">
				<div class="left-calendar">
					<div class="nav"></div>
					<div class="calendar"></div>
					<div class="footer"></div>
				</div>
			</div>
			<!-- 왼쪽 메인 화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container">

				<!-- 왼쪽에 캘린더 일자 누르면 오른쪽에 상세페이지 구현필요 -->

			</div>
			<!-- 오른쪽 메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>