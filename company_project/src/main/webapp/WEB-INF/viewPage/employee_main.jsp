<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 메인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main.css">
</head>

<body>
	<div class="container">
		<nav></nav>
		<div class="main">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container">
				<div class="info1">

					<!-- 공지사항 시작 -->
					<jsp:include page="../../announcement_bar.jsp" />
					<!-- 공지사항 끝 -->

				</div>

				<div class="info2">

					<!-- 이번주 일정표 시작 -->
					<jsp:include page="../../schedule_bar.jsp" />
					<!-- 이번주 일정표 끝 -->

					<!-- 메모장 시작 -->
					<jsp:include page="../../note_bar.jsp" />
					<!-- 메모장 끝 -->

				</div>
			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container"></div>
			<!-- 오른쪽 메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>