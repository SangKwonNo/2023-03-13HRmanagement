<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
<title>관리자 메인</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${ctx}/script/ad_main.js" defer></script>
=======
<title>사원 메인</title>
>>>>>>> nsk_dev
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main.css">
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
<<<<<<< HEAD
					<div class="board-title">
						<div class="board-img">
							<img src="https://cdn-icons-png.flaticon.com/512/568/568297.png"
								alt="">
						</div>
						<div class="board-name">공지사항</div>
					</div>
					<div class="board-content">
						<c:forEach var="vo" items="${list}" varStatus="status">
							<div class="line">
								<div class="writeBox" onclick="detailView(${status.index+1})">
									<div class="inWriteBox">${status.index + 1}.${vo.subject}</div>
									<div class="inWriteBox">${vo.regDate}</div>
								</div>
							</div>
						</c:forEach>
					</div>
=======
					<jsp:include page="../../announcement_bar.jsp" />
>>>>>>> nsk_dev
					<!-- 공지사항 끝 -->

				</div>

				<div class="info2">

					<!-- 메모장 시작 -->
					<jsp:include page="../../note_bar.jsp" />
					<!-- 메모장 끝 -->

				</div>
			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container">
				<div class="right-board-container">
					<input class="right-board-title" type="hidden" name="num" id="num"
						value="${board.num}">
					<input class="right-board-title" type="text" name="subject" id="subject"
						value="${board.subject}">
					<input class="right-board-date" type="text" name="regDate"
						id="regDate" value="${board.regDate}">
					<textarea class="right-board-content" rows="10" cols="50"
						name="contents" id="contents">${board.contents}</textarea>
					<button class="updateButton" onClick="showConfirm()">수정</button>
				</div>
			</div>
			<!-- 오른쪽 메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>