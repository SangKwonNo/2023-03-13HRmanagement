<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 메인</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${ctx}/script/em_main.js" defer></script>
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
					<div class="board-title">
						<div class="board-img">
							<img src="https://cdn-icons-png.flaticon.com/512/568/568297.png"
								alt="">
						</div>
						<div class="board-name">공지사항</div>
					</div>
					<div class="board-content">

						<!-- < 공지 구현 방식 >
                            1. 게시판 형식 (안간편)
                            -> DB 연동하고 어드민과 회원들의 게시글 작성 및 수정 삭제 공유
                            2. JSON 형식 (간편)
                            -> 고정 데이터를 JSON 으로 저장하고 값 가져오기
                        -->
						<c:forEach var="vo" items="${list}" varStatus="status">
							<div class="line">
								<div class="writeBox" onclick="detailView(${status.index+1})">
									<div class="inWriteBox">${status.index + 1}.${vo.subject}</div>
									<div class="inWriteBox">${vo.regDate}</div>
								</div>
							</div>
						</c:forEach>
					</div>
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
					<div class="right-board-title">${board.subject}</div>
					<div class="right-board-date">${board.regDate}</div>
					<div class="right-board-content">${board.contents}</div>
				</div>
			</div>
			<!-- 오른쪽 메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>