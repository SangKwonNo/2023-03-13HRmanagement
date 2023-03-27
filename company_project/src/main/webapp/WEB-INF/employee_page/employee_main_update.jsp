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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<c:set var="info" value="${loginEmployee}" />
	<div class="container">
		<div class="main">
	
			<!-- 좌측아이콘 시작 -->
			<jsp:include page="../../icon_bar.jsp" />
			<!-- 좌측아이콘 끝 -->

			<!-- 왼쪽메인화면 시작 -->
			<div class="left-container">

				<!-- 업데이트 체크 ajax -->
				<script>
					function updateCheck(form) {
						$
								.ajax({
									url : "${ctx}/employee_main_updateCheck.do",
									type : "POST",
									data : {
										"name" : form.name.value,
										"tel" : form.tel.value,
										"email" : form.email.value,
										"address" : form.address.value,
										"num" : '${info.num}'
									},
									success : function(msg) {

										if (msg == 'tel') {
											alert('이미있는 전화번호 입니다.')
										} else if (msg == 'email') {
											alert('이미있는 이메일 입니다.')
										} else {
											alert("변경되었습니다.")
											location.href = '${ctx}/employee_main_update.do';
										}

									},
									error : function() {
										alert("ajax error")
									}
								});
					}
				</script>
				<!-- 업데이트 체크 ajax -->

				<div class="left-update-container">
					<div class="title">정보 수정</div>

					<!-- action 값에 컨트롤러 경로 들어가야함(employeeUpdate.do) -->
					<form action="">
						<div class="name">
							<p>이름</p>
							<input type="text" name="name" id="name" value="${info.name}">
						</div>
						<div class="tel">
							<p>전화번호</p>
							<input type="tel" name="tel" id="tel" value="${info.phone}">
						</div>
						<div class="email">
							<p>이메일</p>
							<input type="eamil" name="email" id="email" value="${info.email}">
						</div>
						<div class="address">
							<p>주소</p>
							<input type="text" name="address" id="address"
								value="${info.addr}">
						</div>

						<!-- button onclick 에 ajax 메소드 호출 들어가야함(본인 정보 제외 중복되면 안되는 조건처리 주소빼고) -->
						<div class="button">
							<input type="button" onclick="updateCheck(form)" value="변경" />
						</div>

					</form>
				</div>

			</div>
			<!-- 왼쪽메인화면 끝 -->

			<!-- 오른쪽메인화면 시작 -->

			<div class="right-container">
				<div class="right-list-container">
					<div class="right-list-container">
						<div class="right-employeeinfo">
							<div class="employeeinfo1">
								<div class="img">
									<div class="imgBox">
										<img src="${ctx}/image/profile_1.JPG" style="width: 100%;">
										<!-- 전페이지에서가져오기 -->							
									</div>
									<form id="imgForm" action="upload.do" method="post"
										enctype="multipart/form-data">
										<input type="file" class="profileUpload" onchange="update()"
											id="formFile" type="file" name="uploadFile" accept=" .jpg" value="변경"/>
											
									</form>
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
							<div class="chatbox"></div>
						</div>
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