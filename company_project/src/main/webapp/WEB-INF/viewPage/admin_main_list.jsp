<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 사원목록 관리</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_list.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측 아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측 아이콘 끝 -->

			<!-- 왼쪽 메인화면 시작 -->
			<div class="left-container">
				<jsp:include page="../../list_bar.jsp" />
			</div>
			<!-- 왼쪽 메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
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
						<div class="chatbox"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- 오른쪽 메인화면 끝 -->

		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>