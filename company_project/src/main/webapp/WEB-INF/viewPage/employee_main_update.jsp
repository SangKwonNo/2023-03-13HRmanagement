<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 수정</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main_update.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container">

				<div class="left-update-container">
					<div class="title">정보 수정</div>

					<!-- action 값에 컨트롤러 경로 들어가야함(employeeUpdate.do) -->
					<form action="">
						<div class="name">
							<p>이름</p>
							<input type="text" name="name" id="name">
						</div>
						<div class="tel">
							<p>전화번호</p>
							<input type="tel" name="tel" id="tel">
						</div>
						<div class="email">
							<p>이메일</p>
							<input type="eamil" name="email" id="email">
						</div>
						<div class="address">
							<p>주소</p>
							<input type="text" name="address" id="address">
						</div>

						<!-- button onclick 에 ajax 메소드 호출 들어가야함(본인 정보 제외 중복되면 안되는 조건처리 주소빼고) -->
						<div class="button">
							<button onclick="">변경</button>
						</div>

					</form>
				</div>

			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽메인화면 시작 -->
			<div class="right-container">

				<div class="right-list-container">
					<div class="right-employeeinfo">
						<div class="employeeinfo1">
							<div class="img">
								<img src="" alt="">
							</div>
							<div class="infobox">
								<div></div>
								<div class="row">
									<div></div>
									<div></div>
								</div>
								<div></div>
							</div>
						</div>
						<div class="employeeinfo2">
							<div></div>
							<div></div>
							<div></div>
							<div></div>
						</div>
						<div class="employeeinfo3"></div>
					</div>
				</div>

			</div>
			<!-- 오른쪽메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>