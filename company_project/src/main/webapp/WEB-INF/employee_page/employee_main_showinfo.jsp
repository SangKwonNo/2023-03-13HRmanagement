<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 목록확인</title>
<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main_list.css">
</head>

<body>
	<div class="container">
		<div class="main">
	
			<!-- 좌측 아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측 아이콘 끝 -->

			<!-- 왼쪽 메인화면 시작 -->

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
											<a href="${ctx}/employee_show_info.do?id=${vo.id}">상세보기</a>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- 사원 목록 테이블 끝 -->
					</div>
				</div>
			</div>
			<!-- 왼쪽 메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container">
				<div class="right-list-container">
					<div class="right-list-container">
						<div class="right-employeeinfo">
							<div class="employeeinfo1">
								<div class="img">
									<div class="imgBox">
										<img src="${ctx}/image/profile_${info.num}.jpg" style="width: 100%;">
									</div>
							</div>
								<div class="infobox">
									<div class="paddingLeft">${info.name}
										(${info.gender}) 전화번호 : ${info.phone}
										<p>주민등록번호 : ${info.birth} - *******</p>
									</div>
									<div class="paddingLeft">
										이메일
										<p>${info.email}</p>
									</div>
									<div class="paddingLeft">
										주소
										<p>${info.addr}</p>
									</div>
								</div>
							</div>
							<div class="employeeinfo2">
								<div class="paddingLeft">
									소속
									<p>${info.em_de_name}</p>
								</div>
								<div class="paddingLeft">
									직책
									<p>${info.em_rn_name}</p>
								</div>
								<div class="paddingLeft">
									역할
									<p>${info.em_job_name}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 오른쪽 메인화면 끝 -->
		</div>
	</div>

	<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>