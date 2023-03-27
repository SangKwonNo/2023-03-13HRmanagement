<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 근태 확인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_calendar.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_list.css">
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

			<!-- 왼쪽 아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 왼쪽 아이콘 끝 -->

			<!-- 왼쪽 메인 화면 시작 -->
			<div class="left-container">
				<div class="left-list-container">

					<div class="left-list-title">
						<img
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAb1BMVEVox9VYqbX///+m3OVLpLHW6uz3+/yBz9udytFmxNJ1tsDq8/RaqrZds8C+3uLH4eVir7re7O+32uB0zNjL4+eQ1N/f8/bQ7fHm8/SEvsep0dfy9/h6ucOPwsrH6e7R7fGz4emWzdZpucWkzNOs3+ckgrOTAAAFBElEQVR4nO3ca3OaQBSAYUUkiEbwlqqoTZv+/99Y004nWs/BZffcmDnvZzObJ8C6C8bRyPM8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8z/M8zwts87LbTaTa7V42srzZZnJ5KzK5irfL5GUmKJx8l+T9Q07EfJtLK+77rL0Inaqbbyq+z76JEBWBWXaREL7LX4I3vfNPN7u9JjBrf3ATNxdVYJbVP5mJO51p9Kvi8MpLfFcGZtnHmJWoOpH+rW5YiZs3bWC2r8acxBfVt4o/FVchI9GKkI9oRshGtCPkIhoSMhEtCXmIpoQsRFtCDqIxIQPRmpCeaE5ITrQnpCYaFBITnwmLdn6t5fw7PAhpid3CYrU+NItFcyq3c0EhKbFTuDo2+d8h8/Gh5jqOgJCS2CVcVvntqCXTTTlISEjsEC6b+0HzAw8RFNIRceH/wGtnlvtysJCMiAoLYNDFEX7tdBnSqp+QiogKjzkwaDWFXlouwir7CYmImLBdQGPmH8BL18gv+FCz7CekIWLCIzzmAXhb/ICONtRi3VNIQsSEZ3jIagscQ/BwAzXAD3cLKYiYEBm1qR9fOi+boCpknuoSEhARIToqdCm12zokcJZ6JkwnUggT6xYmEwnOUmZhKhETHhAhPFmwChOJmBB5k+NYmj4VphEx4T78HZ9fmEREV20luGoDT9JiP+3Z3Qo+QJhCRIXzx60FsvIujuO8Z6fbVXiIMIHYsXt6HAa+Cpeha5qv8vPNsEHCeGLHDvj/pWl+gqeZ4HXpTbd/qzBhNLFD2K7vTtT8jMyjwFb5abd76UBhLLHrPk1xdxSRvc/1LyFxHcYTO4Tr093BWTQVYhSYSxOIqLCGzr2KYdHWQxhFRITtGZk+sItRRhhDhIXbCpsf7y8hcWEEERSCZ+g/Ivniu5ewPxESbrun/wbbyooIx6/pwv3pyVt4RXst9hSOk4UFchPqq/w8bGH9fBGG3BYcijBkDVZRPsCQFi5D1tHYA4xBCMNGOQU9Ei6ma7D67qeFhdOwrVDQm2Lxga28735cWAg+cgIKOU236NY4YgdMJjyFjXL3K2J1zMoRO2AqYehuNuS24rRBV7el2jGch95zCVmAF3UFPyptyqgdMIlwFbpLD5tq9iu4yB0whTCbh0b36RrxNY14LnShC13oQhe60IUudKEFYcss1P3OiM/2vEIb/4/PKRz90gZmx56f5egr3GlfiC3yEToyof53m/T9KEdf4WiiexDnfQ9hf6Hut5sUyEfmSYUjzfP0yfNmIuHm+5CAMcLRZqn0fW3rCGCUcDT7MVX4zr1tGeGLFI5mP8vlSvR7E1fLEn2swSEczV6b6nAupTofqpgTNEV4JcaOKF2scDjEaOFgiPHCoRAThAMhpgiHQUwSDoKYJhwCMVE4AGKq0D4xWWiemC60TiQQGidSCG0TSYSmiTRCy0QioWEildAukUxolkgntEokFBolUgptEkmFJom0QotEYqFBIrXQHpFcaI5IL7RGZBAaI3IIbRFZhKaIPEJLRCahISKX0A6RTWiGyCe0QmQUGiFyCm0QWYUmiLxCC0RmoQEit1CfyC5UJ/ILtYkCQmWihFCXKCJUJcoINYlCQkWilFCPKCZUI8oJtYiCQiWipFCHKCpUIcoKNYjCQgWitFCeKC4UJ8oLpYkKQmGihlCWqCIUJeoIJYlKQkHib0sCwd04iujdAAAAAElFTkSuQmCC"
							alt="">
						<div class="name">사원 리스트</div>
					</div>

					<div class="left-list-content">

						<div class="left-list-search">

							<div class="left-list-search">
								<form action="#">
									<input type="text" class="search-bar" name="searchInfo">
									<input type="button">
								</form>
							</div>
						</div>
						<!-- 사원 목록 테이블 시작 -->
						<div class="left-list-employeelist">
							<div class="left-employee-attribute">
								<div class="attribute name" name="name">이름</div>
								<div class="attribute department" name="department">부서</div>
								<div class="attribute position" name="position">직급</div>
								<div class="attribute blank"></div>
							</div>
							<div class="left-employees">
								<c:forEach var="vo" items="${list}">
									<div class="employee">
										<div class="box name" id="name" name="name">${vo.name}</div>
										<div class="box department" id="department" name="department">${vo.em_de_name}</div>
										<div class="box position" id="position" name="position">${vo.em_rn_name}</div>
										<div class="box info">
											<button class="btn-btn-primary" id="attendanceBtn">근태확인<button>
										</div>
										<div class="box delete">
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- 사원 목록 테이블 끝 -->
					</div>
				</div>
			</div>
			<!-- 왼쪽 메인 화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container">

				<script type="text/javascript">
					document.querySelector("#attendanceBtn").addEventListener('click', function() {
						var calendarEl = document.getElementById('calendar');
						calendar = new FullCalendar.Calendar(calendarEl, {
							timeZone : 'UTC',
							headerToolbar : {
								left : 'prev,next today'
							},
							selectable : false,
							selectMirror : true,
							editable : true, // false로 변경 시 draggable 작동 x 
							displayEventTime : true,
							locale : 'ko',
							eventColor : 'gray',
							events : function (info, successCallback,
									failureCallback) {
								$.ajax({
									url : '${ctx}/admin_main_calendarShow.do',
									dataType : 'json',
									success : function(param) {
										let events = [];
										$.each(param, function(index, data) {
											console.log(data.check_in);
											console.log(data.check_out);
											events.push({
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
			<!-- 오른쪽 메인화면 끝 -->

		</div>
	</div>
	<footer> </footer>
</body>

</html>