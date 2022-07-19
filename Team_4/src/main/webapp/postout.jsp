<%@page import="com.dto.PostDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
	/*
	border: 1px solid;
	*/
}
body {
	background-color: #F15F5F;
}
#head{
	height: 15px;
	margin-left: 250px;
}
#post{
	margin-left: 250px;
}
#box{
	position: inherit;
	margin-top:35px;
	margin-left: 90px;
	padding-top : 40px;
	width: 1100px;
	height: 580px;
	border: 8px solid #353535;
	border-radius: 40px;
}
/*글제목 표시*/
#title{
	width: 840px;
	margin-left: 100px;
	margin-bottom: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 35px;
	float: left;
	line-height: 35px;
	font-size: 12pt;
	padding-left: 50px;
}
/*글내용 표시*/
#text{
	width: 820px;
	margin-left: 100px;
	margin-bottom: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 450px;
	float: left;
	line-height: 35px;
	font-size: 12pt;
}
/*글내용 표시*/
#text1{
	width: 840px;
	margin-left: 50px;
}

/* section 시작 */
/*
#post>h1, #post>h1>p {
	margin-top: 100px;
}
*/
/*
fieldset {
	background-color: #FCF6F5;
	padding: 20px;
	padding-left: 50px;
	text-align: left;
	color: black;
	border: 3px solid lightgray;
	border-radius: 15px;
}
*/
/*
.button123 {
	widows: 60px;
	height: 35px;
	background: #F15F5F;
	color: white;
	border-radius: 10px;
}
*/
#buttonbox {
	width: 500px;
	margin: 0 auto;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	text-align: center;
	height: 35px;
}

.button {
	width: 100px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	text-align: center;
	height: 35px;
}

button:active {
	box-shadow: 1px 1px 5px white;
}
.blind {
	display: none;
}
.asdf{
	margin-left: 300px;
}

</style>
<meta charset="UTF-8">
<title>자랑게시판 출력(Study Share)</title>
</head>
<body>
	<%@ include file="left_menu.jsp"%>

	<section>
		<div id="post" class="su">
			<div id="head"></div>
			<div id="box">
				<h1 id="title">${empty post.b_title ? '데이터 없음' : post.b_title}</h1>
				<fieldset id="text">
					<!-- 
					<legend id="u_tt">글내용</legend>
					 -->
					<p id="text1">${empty post.b_text ? '데이터 없음' : post.b_text}</p>
				</fieldset>
				<div id="buttonbox">
					<button id="bt1" type="button" class="blind">수정</button>
					<button id="bt2" type="button" class="blind">삭제</button>
				</div>
			</div>
	
			<div id="postupdate" class="blind">
				<form action="update2">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2">게시판 글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input   type="text" class="form-control"
									placeholder="글 제목" name="bbsTitle" maxlength="50"
									value="${post.b_title}"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="bbsContent" maxlength="2048" "></textarea></td>
							</tr>
						</tbody>
					</table>
					<!-- 글쓰기 버튼 생성 -->
					<input id="change" type="submit" class="btn btn-primary pull-right" value="수정하기">
				</form>
			</div>
		</div>
	</section>

</body>
<script>
$("#btn6").click(function () {
		
		location.href="logout.jsp";		
		
	});
	<%String str2 = (String) session.getAttribute("id");
String str3 = (String) session.getAttribute("nickname");%>
	var str = "<%=str2%>";
	var str1 = "<%=str3%>";
	var str2 = "${post.m_id}";
	

	$("#bt1").click(function() {
		location.href = "update1?code=${post.b_num}";
	});
	$("#bt2").click(function() {
		location.href = "delete11?code=${post.b_num}";
	});

	/* 게시글을 쓴 사람과 현재 세션에 유지중인 아이디가 같으면 수정 삭제 가능 */
	if (str1 == str2) {
		$("#bt1").attr("class", "button");
		$("#bt2").attr("class", "button");
	}
</script>

</html>