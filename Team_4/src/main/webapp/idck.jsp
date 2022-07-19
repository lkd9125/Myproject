<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중복체크(Study Share)</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	background-color: #FCF6F5;
}

#d1{
	width: 430px;
	margin : 0 auto;
	margin-top: 150px;
	height: 100px;
}
input{
	width: 300px;
	height: 50px;
	border: 1px solid #FCF6F5;
	border-bottom: 2px solid lightgray;
	background-color: #FCF6F5;
}
button{
	height: 30px;
	width: 120px;
	border: 1px solid;
	background-color: #7b9acc;
	color : white;
	border-radius: 9px;
}
button:hover{
	background-color: #82B3ED;
}
#p1{
	margin-top : 20px;
}
#d2{
	width: 125px;
	margin: 0 auto;
	margin-top: 100px;
}


</style>
</head>
<body>
<div id="d1">
<form action="idcheck" method="post">
	<input id="id" type="text" name="m_id" placeholder="아이디" value="${param.m_id}">
	<button id="btn">확인하기!</button><br>
</form>
</div>
</body>
<c:if test="${!empty msg}">
<script type="text/javascript">
	alert("${msg}");
</script>
<c:remove var="msg" scope="session"/>
<script type="text/javascript">	window.close();</script>
</c:if>	

</html>