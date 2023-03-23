<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 급여 정보확인</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${ctx}/script/em_salary.js" defer></script>

<link rel="stylesheet" href="${ctx}/css/index.css">
<link rel="stylesheet" href="${ctx}/css/employee_main_salary_info.css">
</head>

<body>
	<div class="container">
		<div class="main">

			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container">
				<div class="selectDate">
					<form action="${ctx}/employee_main_salary_info.do" method="post">
						<select class="selectDateBox" name="selectDate">
							<option align="center" value="0">23.02.10 - 23.03.09</option>
							<option align="center" value="1">23.01.10 - 23.02.09</option>
							<option align="center" value="2">22.12.10 - 23.01.09</option>
						</select><input type="submit" value="검색" />
					</form>
				</div>
				<c:set var="vo" value="${vo}" />
				<div class="salaryViewBox">
					<div class="salaryView_base salaryView">
						<div class="w300">기본급여</div>
						<div class="w300"></div>
						<div class="w300">${vo.basic_salary}</div>
					</div>
					<div class="salaryView_over salaryView">
						<div class="w300">초과근무</div>
						<div class="w300">00 시간</div>
						<div class="w300">0</div>
					</div>
					<div class="salaryView_holi salaryView">
						<div class="w300">휴일근무</div>
						<div class="w300">00 시간</div>
						<div class="w300">0</div>
					</div>
				</div>
				<div class="textBox">
					<div class="fontSize20">
						지급날짜 : 23. ${month}. 10<br> <br> 예상지급액 :
						${vo.basic_salary}<br> <br>
					</div>
					<div>
						위 금액은 세전 예상금액이며,<br>실제 지급시 상세 내용에 따라 변동이 있을 수 있음
					</div>
				</div>
				<div>
				
				<button class="pdfPrint" onclick="saveAsImage()">명세표 저장</button>
					<!-- <input class="pdfPrint" type="button" type="button" value="명세표 저장"
						onclick="saveAsImage()"> -->

				</div>
			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽메인화면 시작 -->
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
								<td>0</td>
							</tr>
							<tr>
								<td class="colorBox2">휴 일 수 당</td>
								<td>0</td>
							</tr>
							<tr>
								<td class="colorBox2">식대</td>
								<td>0</td>
							</tr>
							<tr>
								<td class="colorBox2">통신비</td>
								<td>0</td>
							</tr>
							<tr>
								<td class="colorBox2">차량유지비</td>
								<td>0</td>
							</tr>
							<tr>
								<td class="colorBox2">하늘..는비</td>
								<td>0</td>
							</tr>
							<tr>
								<td class="colorBox2">레이니즘비</td>
								<td>0</td>
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
								<td class="colorBox2">xx세</td>
								<td>-</td>
							</tr>
							<tr>
								<td class="colorBox2">많이세</td>
								<td>-</td>
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
							OO 회사 <br> 대표이사 OOO<br> <br>
							<div class="pSMain3-2">출력날짜 : ${today}</div>
						</div>

					</div>
					<!-- tr div end -->
				</div>
				<!-- A4 용지 끝 -->
			</div>
			<!-- 오른쪽메인화면 끝 -->

		</div>
		<div class="footer"></div>
	</div>
	<footer> </footer>
</body>

</html>