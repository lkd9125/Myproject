<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팀원소개</title>
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
	letter-spacing: 5px; 
	word-spacing: 2px;
	line-height: 35px;
}
#content1_1{
	text-align: center;
	margin-top: 135px;
	color: white;
	font-size: 25px;
	font-weight: 600;
}
#content1_2{
	text-align: center;
	color: white;
	font-size: 25px;
	font-weight: 500;
	letter-spacing: 5px; 
	word-spacing: 2px;
	line-height: 35px;
	margin-top: 20px;
}
</style>

<link type="text/css" rel="stylesheet" href="css/method.css">

</head>
<body>
	<%@ include file="left_menu.jsp" %>
	<div id="main">
		<div id="up">
			<div id="up_left">
				<p>Home / Groub / <b>팀원 소개</b></p>
			</div>
		</div>	
		<hr>
		<div id="content1">
			<div id="content1_1">
				<h1 style="color: #F15F5F"> Team 4</h1><br>
				<div id="content1_2">
					조장 <span style="color: #F15F5F">|</span> 김진경<br>
					<p></p><br>
					조원 <span style="color: #F15F5F">|</span> 이경도 이민영 정경아
				</div>
			</div>
		</div>
	</div>
</body>
</html>