<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 일정 조회</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main.css">
<link rel="stylesheet" href="${ctx}/css/employee_main_schedule.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.js"
	integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
	crossorigin="anonymous"></script>
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>
</head>

<body>
	<div class="conta">
		<div class="mai">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽 메인화면 시작 -->
			<div class="main-container">
				<script type="text/javascript">
					document
							.addEventListener(
									'DOMContentLoaded',
									function() {
										var calendarEl = document
												.getElementById('calendar');
										calendar = new FullCalendar.Calendar(
												calendarEl,
												{
													timeZone : 'UTC',
													headerToolbar : {
														left : 'prev,next today',
														center : 'myCustomButton',
														right : 'btn1,btn2'
													},
													selectable : false,
													selectMirror : true,
													customButtons : {

														myCustomButton : {

															text : '일정확인',

															click : function(
																	event) {
																location.href = '${ctx}/employee_main_schedule.do';

															}
														},
														btn1 : {
															text : '출근',
															click : function() {
																$
																		.ajax({
																			url : '${ctx}/employee_main_work.do',
																			type : "POST",
																			success : function(
																					msg) {
																				if (msg == 'error') {
																					alert("이미 출근 입니다.");
																				} else {
																					alert('출근 되었습니다.');
																				}
																				window.location
																						.reload();
																			}
																		})

															}
														},
														btn2 : {
															text : '퇴근',
															click : function() {
																$
																		.ajax({
																			url : '${ctx}/employee_main_leave.do',
																			type : "POST",
																			success : function(
																					msg) {
																				if (msg == 'error') {
																					alert("이미 퇴근 입니다.");
																				} else {
																					alert('퇴근 되었습니다.');
																				}
																				window.location
																						.reload();
																			}
																		})
															}
														}

													},
													editable : true, // false로 변경 시 draggable 작동 x 
													displayEventTime : true,
													locale : 'ko',
													eventColor : 'gray',
													events : function(info,
															successCallback,
															failureCallback) {
														$
																.ajax({
																	url : '${ctx}/employee_main_calendarShow.do',
																	dataType : 'json',
																	success : function(
																			param) {
																		let events = [];
																		$
																				.each(
																						param,
																						function(
																								index,
																								data) {
																							console
																									.log(data.check_in);
																							console
																									.log(data.check_out);
																							events
																									.push({
																										title : data.memo,
																										start : data.check_in,
																										end : data.check_out,
																										id : data.em_num
																									});
																						});
																		successCallback(events);
																	}
																});

													}
												// 시간 표시 x
												});
										calendar.render();
									});
				</script>


				<div id="calendarBox">
					<div id="calendar"></div>
				</div>


			</div>
		</div>
	</div>
	<footer> </footer>
</body>

</html>

