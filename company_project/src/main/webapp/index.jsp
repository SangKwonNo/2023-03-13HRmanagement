<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<script>
		let contextPath = window.location.pathname.substring(0,
				window.location.pathname.indexOf("/", 2));
		location.href = contextPath + "/main.do";
	</script>
</body>
</html>