<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<c:set var="ctx" value="${pageContext.request.contextPath}" />
		<!DOCTYPE html>
		<div class="icon-ico">
			<div class="first-listo">

				<c:if test="${sessionScope.id eq 'admin'}">
					<div class="second-icon" role="img" title="메인화면" onclick="location.href='${ctx}/admin_main.do'">
					</div>
					<div class="third-icon" role="img" title="회원리스트"
						onclick="location.href='${ctx}/admin_main_list.do'"></div>
					<div class="fourth-icon" role="img" title="업무 및 근태"
						onclick="location.href='${ctx}/admin_main_schedule.do'"></div>
					<div class="fifth-icon" role="img" title="급여확인"
						onclick="location.href='${ctx}/admin_main_salary.do'"></div>
					<div class="last-icon" role="img" title="로그아웃" onclick="logout()"></div>
				</c:if>
				<c:if test="${sessionScope.id ne 'admin'}">
					<div class="first-icon" role="" title="정보확인 및 수정"
						onclick="location.href='${ctx}/employee_main_update.do'"></div>
					<div class="second-icon" role="img" title="메인화면" onclick="location.href='${ctx}/employee_main.do'">
					</div>
					<div class="third-icon" role="img" title="회원리스트"
						onclick="location.href='${ctx}/employee_main_list.do'"></div>
					<div class="fourth-icon" role="img" title="업무 및 근태"
						onclick="location.href='${ctx}/employee_main_schedule.do'"></div>
					<div class="fifth-icon" role="img" title="급여관리"
						onclick="location.href='${ctx}/employee_main_salary.do'"></div>
					<div class="last-icon" role="img" title="로그아웃" onclick="logout()"></div>
				</c:if>
				<script>
					function logout() {
						alert('로그아웃');
						location.href = '${ctx}/logout.do';
					}
				</script>


			</div>
		</div>