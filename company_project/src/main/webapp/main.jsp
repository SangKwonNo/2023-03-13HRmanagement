 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:set var="ctx" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>로그인</title>
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<script type="text/javascript" src="${ctx}/script/main.js" defer></script>
			<link rel="stylesheet" href="${ctx}/css/index.css">
			<link rel="stylesheet" href="${ctx}/css/main.css">
		</head>

		<body>
			<div class="container">
				<div class="main">


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
								<p>아이디</p>
								<input type="text" id="id" name="id">
								<p>비밀번호</p>
								<input type="password" id="pw" name="pw">
								<div class="buttonbox">
									<button onclick="idCheck()">로그인</button>
								</div>
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