<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용방법 페이지</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
*{
	padding: 0;
	margin: 0;	
	/*
	border: 1px solid;
	*/
}
/*클릭하지 않았을때*/
 a:link { color: white; text-decoration: none;}
 /*한번 클릭 or 다녀갔던 곳*/
 a:visited { color: white; text-decoration: none;}
 /*마우스 가져갔을때*/
 a:hover { color: #F15F5F; text-decoration: none;}
body{
	background-color: #353535;
}

/*최고 상단*/
#up{
	border-color: red;
	height: 100px;
	padding-left: 250px;
}


#up_left{
	float: right;
	margin-top: 68px;
	margin-right: 20px;
	color: #F15F5F;
	font-family: 'Noto Sans KR', sans-serif;
}
hr{
	margin-right: 10px;
}
#content1{
	border: 1px solid #F15F5F; 
	margin-left: 340px;
	margin-top: 70px;
	width: 1100px;
	height: 500px;
	background-color: #353535;
	font-family: 'Noto Sans KR', sans-serif;
}
#content1_1{
	text-align: center;
	margin-top: 120px;
	color: white;
	font-size: 25px;
	font-weight: 500;
}
#content1_2{
	text-align: center;
	color: white;
	margin-top: 20px;
	font-size: 25px;
	letter-spacing: 5px; 
	word-spacing: 2px;
	line-height: 40px;
}
</style>
<link type="text/css" rel="stylesheet" href="css/method.css">
</head>
<body>
	<%@ include file="left_menu.jsp" %>
	<div id="main">
		<div id="up">
			<div id="up_left">
				<p>Home / Groub / <b>프로젝트 소개</b></p>
			</div>
		</div>	
		<hr>
		<div id="content1">
			<div id="content1_1">
				<h1 style="color: #F15F5F;"> 코드를 공유해보세요</h1><br>
			</div>
			<div id="content1_2">
				<p>My Code Share는</p>
				<!-- <p>회원가입, 로그인, 가입정보 검색 & 수정 기능과</p>
				<p>로그인한 유저만 게시글을 작성하는 기능을 통해</p>
				<p>자신의 코드를 자랑하고 코드에 대한 질문을 통해</p>
				<p>회원끼리 도움을 주고받으며 코드를 공유하는 사이트입니다.</p> -->
				<p>회원관리 시스템과 게시판 시스템을 이용하여</p>
				<p>자신의 코드를 공유하는 사이트입니다.</p>
			</div>
		</div>
	</div>
</body>
</html>