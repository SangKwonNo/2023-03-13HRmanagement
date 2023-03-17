<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 사원급여 관리</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_salary_info.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container">
				<div class="logo"></div>
			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽메인화면 시작 -->
			<div class="right-container"></div>
			<!-- 오른쪽메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>