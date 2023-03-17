<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/main.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="./icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container"></div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽메인화면 시작 -->
			<div class="right-container">

				<!-- 로그인 창 시작 -->
				<div class="login">
					<div class="login-title">
						<p>로그인</p>
					</div>
					<div class="login-bar">
						<form class="form" action="#">
							<p>아이디</p>
							<input type="text">
							<p>비밀번호</p>
							<input type="password">
							<div class="buttonbox">
								<button onclick="">로그인</button>
							</div>
						</form>
					</div>
				</div>
				<!-- 로그인 창 끝 -->

			</div>
			<!-- 오른쪽메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>