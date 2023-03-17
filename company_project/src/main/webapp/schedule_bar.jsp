<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="schedule">
	<!-- 일정표 구현 방식
                            
                            1. 한 주 달력
                            -> 달력에서 한줄만 따와서 간략하게 넣고 상세보기 가능하게 구현
                            
                            2. 월 화 수 목 금 만 쓰기?
                            -> 누르면 상세보기 가능하게 하기
                            
                            3. 정적, 동적 방식
                            -> 정해진 한 주만 보이게 구현하기? 아니면 날짜에 따라 계속 바뀌게?
                        -->
	<div class="schedule-title">
		<div class="schedule-img">
			<img src="https://cdn-icons-png.flaticon.com/512/1216/1216995.png"
				alt="">
		</div>
		<div class="schedule-name">이번주 일정</div>
	</div>
	<div class="schedule-content">
		<div class="week">
			<div id="mon"></div>
			<div id="tues"></div>
			<div id="wednes"></div>
			<div id="thurs"></div>
			<div id="fri"></div>
		</div>
	</div>
</div>