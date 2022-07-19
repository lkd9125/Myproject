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
	font-weight: 400;
	letter-spacing: 5px; 
	word-spacing: 2px;
	line-height: 40px;
}
#content1_2{
	text-align: center;
	color: white;
	font-size: 25px;
	font-weight: 600;
	letter-spacing: 5px; 
	word-spacing: 2px;
	line-height: 40px;
	margin-top: 20px;
	margin-bottom: 20px;
}
</style>

<link type="text/css" rel="stylesheet" href="css/method.css">
 
</head>
<body>
	<%@ include file="left_menu.jsp" %>
	<div id="main">
		<div id="up">
			<div id="up_left">
				<p>Home / Menu / <b>MCS 사용법</b></p>
			</div>
		</div>	
		<hr>
		<div id="content1">
			<div id="content1_1">
				<p> 내가 만든 코드를 자랑하고 싶을 때</p>
				<p> 모르는 코드를 질문하고 싶을 때 </p><br>
				<div id="content1_2">
					<h1 style="color: #F15F5F;"> MY CODE SHARE</h1><br>
				</div>
				좌측 <span style="color: #F15F5F;">자랑게시판</span>과 <span style="color: #F15F5F">질문게시판</span>을 이용해보세요.
			</div>
		</div>
	</div>
</body>
</html>