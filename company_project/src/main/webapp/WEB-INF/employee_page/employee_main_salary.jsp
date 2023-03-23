<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 비밀번호 재확인</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${ctx}/script/em_salary.js" defer></script>

<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main_salary.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측 아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측 아이콘 끝 -->

			<!-- 급여확인 전 비밀번호 입력 페이지 시작 -->
			<div class="main-container">
				<div class="salary-login-box">
					<div class="salary-login-title">
						<p>비밀번호 재확인</p>
					</div>
					<input type="password" id="pw" name="pw">
					<button onclick="pwCheck()">입력</button>
				</div>
			</div>
			<!-- 급여확인 전 비밀번호 입력 페이지 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>