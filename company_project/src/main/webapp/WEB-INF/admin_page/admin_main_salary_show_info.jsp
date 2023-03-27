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
<link rel="stylesheet" href="${ctx}/css/admin_main_list.css">
<link rel="stylesheet" href="${ctx}/css/admin_main_salary_info.css">
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
								<c:forEach var="emp" items="${list}">
									<div class="employee">
										<div class="box name" id="name" name="name">${emp.name}</div>
										<div class="box department" id="department" name="department">${emp.em_de_name}</div>
										<div class="box position" id="position" name="position">${emp.em_rn_name}</div>
										<div class="box info">
											<a href="${ctx}/admin_main_salary_show_info.do?id=${emp.id}">급여관리</a>
										</div>
									</div>
								</c:forEach>
							</div>
							<!-- 사원 목록 테이블 끝 -->
						</div>
					</div>
				</div>
			</div>
			<!-- 왼쪽 메인화면 끝 -->

			<!-- 오른쪽 메인화면 시작 -->
			<div class="right-container">

				<div class="payStubBox">
					<!-- A4 용지 시작 -->
					<div class="payStubTop">
						<!-- 제목 div start -->
						<div class="payStubTitle colorBox1">2023. ${month} 급여명세표</div>
					</div>
					<!-- 제목 div end -->
					<div class="payStubdate">지급날짜 : 23. ${month}. 10</div>

					<div class="payStubMain1">
						<!-- first div start -->
						<table class="pSMain1-1">
							<!-- first_left div start -->
							<tr>
								<td class="colorBox1">성 명</td>
								<td>${em.name}</td>
							</tr>
							<tr>
								<td class="colorBox1">입 사 일</td>
								<td>${em.em_entry}</td>
							</tr>
							<tr>
								<td class="colorBox1">퇴 사 일</td>
								<td>-</td>
							</tr>
						</table>
						<!-- first_left div end -->
						<table class="pSMain1-2">
							<!-- first_right div start -->
							<tr>
								<td class="colorBox1">생 년 월 일</td>
								<td>${em.birth}</td>
							</tr>
							<tr>
								<td class="colorBox1">부 서 명</td>
								<td>${em.em_de_name}</td>
							</tr>
							<tr>
								<td class="colorBox1">직 책</td>
								<td>${em.em_job_name}</td>
							</tr>
						</table>
						<!-- first_right div end -->
					</div>
					<!-- first div end -->
					<div class="payStubMain2">
						<!-- second div start -->
						<table class="pSMain2-1">
							<!-- second_left div start -->
							<tr>
								<td colspan="2" class="colorBox1">급 여 내 역</td>
							</tr>
							<tr>
								<td class="colorBox2">기 본 급</td>
								<td>${vo.basic_salary}</td>
							</tr>
							<tr>
								<td class="colorBox2">초 과 수 당</td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2">휴 일 수 당</td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2">식대</td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2">통신비</td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2">차량유지비</td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2"> </td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2"> </td>
								<td> </td>
							</tr>
							<!-- 갯수는 ?? -->
							<tr>
								<td class="colorBox2">총 액</td>
								<td>${vo.basic_salary}</td>
							</tr>
						</table>
						<!-- second_left div end -->
						<table class="pSMain2-2">
							<!-- second_right div start -->
							<tr>
								<td colspan="2" class="colorBox1">공 제 내 역</td>
							</tr>
							<tr>
								<td class="colorBox2">근로소득세</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2">지방소득세</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2">국민연금</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2">고용보험</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2">건강보험</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2"> </td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2"> </td>
								<td> </td>
							</tr>
							<tr>
								<td class="colorBox2">공 제 합 계</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2">실 지 급 액</td>
								<td>${vo.basic_salary}</td>
								<%-- <c:if test="${selectDate ne 0 }">
									<td>${vo.basic_salary}</td>
								</c:if>
								<c:if test="${selectDate eq 0 }">
									<td>미지급 상태</td>
								</c:if> --%>
							</tr>
						</table>
						<!-- second_right div end -->
					</div>
					<!-- second div end -->
					<div class="payStubMain3">
						<!-- tr div start -->
						<div class="pSMain3-1">
							OO 회사 <br> 대표이사 노상권<br> <br>
							<div class="pSMain3-2">출력날짜 : ${today}</div>
						</div>

					</div>
					<!-- tr div end -->
				</div>


			</div>
			<!-- 오른쪽 메인화면 끝 -->

		</div>
	</div>
	<footer> </footer>
</body>

</html>