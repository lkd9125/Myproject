<%@page import="com.dto.PostDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>업데이트 작성 공간.</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

body {
	background-color: #F15F5F;
}
#head{
	height: 15px;
	margin-left: 250px;
}
#idv1{
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
/*메인*/
#num , #tittle , #name{
	width: 840px;
	margin-bottom: 10px;
	margin-left: 100px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 40px;
	float: left;
	line-height: 35px;
	font-size: 12pt;
	padding-left: 50px;
	text-align: center;
}
#text{
	width: 840px;
	margin-bottom: 10px;
	margin-left: 100px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 350px;
	float: left;
	line-height: 35px;
	font-size: 12pt;
	padding-left: 50px;
	text-align: center;
}
#change{
	width: 150px;
	margin-bottom: 10px;
	margin-left: 497px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 40px;
	float: left;
	line-height: 35px;
	font-size: 12pt;
	text-align: center;
}
#change:active {
	box-shadow: 1px 1px 5px white;
}

/* section 시작 */
/*
#post {
	width: 800px;
	height: 600px;
	border: 1px solid;
	margin: 0 auto;
}

#post>h1, #post>h1>p {
	margin-top: 100px;
}

fieldset {
	background-color: #FCF6F5;
	padding: 20px;
	padding-left: 50px;
	text-align: left;
	color: black;
	border: 3px solid lightgray;
	border-radius: 15px;
}

.button123 {
	widows: 60px;
	height: 35px;
	background: #F15F5F;
	color: white;
	border-radius: 10px;
}

#buttonbox {
	width: 160px;
	margin: 0 auto;
	float: right;
}

.button {
	width: 60px;
	height: 35px;
	margin-left: 15px;
	background-color: #F15F5F;
	color: #FCF6F5;
	border: 1px solid #F15F5F;
}
.blind {
	display: none;
}

.asdf {
	margin-left: 800px;
}
#idv1{
	height: 100px;
}
.table table-striped{
	style="text-align: center; 
	border: 1px solid #dddddd"
}
*/
</style>
</head>
<body>
	<%@ include file="left_menu.jsp"%>
	<section>
	<div id = "idv1">
		<div id="head"></div>
		<div id="box">
			<div id="postupdate" class="asdf">
				<form action="update2">
					<table class="table table-striped">
						<tbody>
							<tr>
								<td><input id="num" type="text" class="form-control"
									placeholder="글 번호" name="bbsNum" maxlength="50"
									value="${post.b_num}" readonly></td>
							</tr>
							<tr>
								<td><input id="tittle" type="text" class="form-control"
									placeholder="글 제목" name="bbsTitle" maxlength="50"
									value="${post.b_title}"></td>
							</tr>
							<tr>
								<td><textarea id="text" class="form-control" placeholder="글 내용"
										name="bbsContent" maxlength="2048" ></textarea></td>
							</tr>
							<tr>
								<td><input id="name" type="text" class="form-control"
									placeholder="글 게시자" name="bbsId" maxlength="50"
									value="${post.m_id}" readonly></td>
							</tr>
						</tbody>
					</table>
					<!-- 글쓰기 버튼 생성 -->
					<input id="change" type="submit" class="btn btn-primary pull-right" value="수정하기">
				</form>
			</div>	
		</div>
	</div>
	</section>
</body>
<script type="text/javascript">
</script>
</html>