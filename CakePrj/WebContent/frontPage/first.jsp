<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../static/js/jquery-3.2.1.min.js"></script>
<title>Insert title here</title>

<script type="text/javascript">
	function fun(){
		$.ajax({
			url:'/CakePrj/cake/fun',
			date:{first:1,second:2},
		});
	}
</script>


</head>
<body>
	<!-- <script>
		$.ajax({
			url: "/CakePrj/cake/loadAllCake",
		});
		alert("fsafsadf")
	</script> -->
	
	<fmt:formatNumber type="number" value="${10 / 3 } " maxFractionDigits="2"/>
	
	<div>
		<label><a href="/CakePrj/cake/fun"><input type="checkbox" id="first"/>first</a></label>
		<label onclick = "fun()"><input type="checkbox" id="second"/>second</label>
		<label><input type="checkbox" id="third"/>third</label>
	</div>
	
	<div>
		<p>chenshiyi${chenshiyi}</p>
	</div>
	
	
</body>
</html>