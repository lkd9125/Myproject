<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main 홈화면</title>
<style type="text/css">
/*클릭하지 않았을때*/
a:link {
	color: white;
	text-decoration: none;
}
/*한번 클릭 or 다녀갔던 곳*/
a:visited {
	color: white;
	text-decoration: none;
}
/*마우스 가져갔을때*/
a:hover {
	color: #F15F5F;
	text-decoration: none;
}

.a1:hover {
	color: #353535;
}

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

/*하단 메뉴 시작*/
#mini_m1 {
	float: right;
	padding-right: 215px;
}

#mini_m0 {
	color: white;
	height: 100%;
	padding-top: 450px;
}

#mini_btn>h3 {
	text-align: center;
}

/*슬라이드 화면*/
#k_main {
	height: 100%;
	padding-top: 80px;
	margin: 0 auto;
}

#main {
	/*position: fixed; top: 80px; right: 650px;*/
	padding-right: 80px;
	float: right;
}

#main1 {
	/*position: fixed; top: 80px; right: 100px;*/
	padding-right: 100px;
	float: right;
}

/* div 설정 */
.slider {
	position: relative;
	overflow: hidden;
	width: 500px;
	height: 400px;
}

.slider>ul {
	/* 슬라이더 화면의 너비와 높이 설정
	이 때 슬라이더 될 화면의 개수 만큼 가로의 백분율을 크게 설정한다.
	이미지 5장 -> 500%, 이미지 4장 -> 400%
*/
	width: 400%;
	height: 100%;
	/*리스트 항목의 스타일 변경 */
	list-style: none;
}

/* 각 항목을 세로에서 가로로 변경하고 한 화면만 보이도록 너비를 설정. 
	화면 5개 -> 20%, 화면 4개 -> 25%
*/
.slider>ul>li {
	float: left;
	width: 25%;
	height: 100%;
}

.slider li:nth-child(1) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}

.slider li:nth-child(2) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}

.slider li:nth-child(3) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}

.slider li:nth-child(4) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}
/* 라디오버튼 숨기기 - 라디오버튼의 모양을 바꾸기 어렵기 때문에
 label로 모양을 잡기 위해 라디오버튼을 화면에서 제거. */
.slider input {
	display: none;
}

.slider p {
	text-align: center;
	position: absolute;
	bottom: 10px;
	left: 0;
	width: 100%;
}

/* label의 모양 설정 */
.slider label {
	display: inline-block;
	vertical-align: middle;
	width: 10px;
	height: 10px;
	border: 2px solid #353535;
	background-color: white;
	border-radius: 50%;
	cursor: pointer;
	transition: 0.3s;
}

/* label을 선택 할 때 화면이 이동되도록 처리 
	margin-left로 이동하는 효과를 줌. */
#p1:checked ~ul {
	margin-left: 0%;
	transition: margin-left 1s;
}

#p2:checked ~ul {
	margin-left: -100%;
	transition: margin-left 1s;
}

#p3:checked ~ul {
	margin-left: -200%;
	transition: margin-left 1s;
}

#p4:checked ~ul {
	margin-left: -300%;
	transition: margin-left 1s;
}

/* 선택한 화면에 따라 label의 모양 변경(배경색) */
#p1:checked ~.pos>label:nth-child(1) {
	background-color: #F15F5F;
}

#p2:checked ~.pos>label:nth-child(2) {
	background-color: #F15F5F;
}

#p3:checked ~.pos>label:nth-child(3) {
	background-color: #F15F5F;
}

#p4:checked ~.pos>label:nth-child(4) {
	background-color: #F15F5F;
}
/* div2 설정 */
.slider1 {
	position: relative;
	overflow: hidden;
	width: 500px;
	height: 400px;
}

.slider1>ul {
	width: 400%;
	height: 100%;
	list-style: none;
}

.slider1>ul>li {
	float: left;
	width: 25%;
	height: 100%;
}

.slider1 li:nth-child(1) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}

.slider1 li:nth-child(2) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}

.slider1 li:nth-child(3) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}

.slider1 li:nth-child(4) {
	background-color: white;
	background-size: 600px 800px;
	color: #353535;
	background-size: cover;
	border-radius: 30px;
}
/* 라디오버튼 숨기기 - 라디오버튼의 모양을 바꾸기 어렵기 때문에
 label로 모양을 잡기 위해 라디오버튼을 화면에서 제거. */
.slider1 input {
	display: none;
}

.slider1 p {
	text-align: center;
	position: absolute;
	bottom: 10px;
	left: 0;
	width: 100%;
}

/* label의 모양 설정 */
.slider1 label {
	display: inline-block;
	vertical-align: middle;
	width: 10px;
	height: 10px;
	border: 2px solid #353535;
	background-color: white;
	border-radius: 50%;
	cursor: pointer;
	transition: 0.3s;
}

/* label을 선택 할 때 화면이 이동되도록 처리 
	margin-left로 이동하는 효과를 줌. */
#p11:checked ~ul {
	margin-left: 0%;
	transition: margin-left 1s;
}

#p22:checked ~ul {
	margin-left: -100%;
	transition: margin-left 1s;
}

#p33:checked ~ul {
	margin-left: -200%;
	transition: margin-left 1s;
}

#p44:checked ~ul {
	margin-left: -300%;
	transition: margin-left 1s;
}

/* 선택한 화면에 따라 label의 모양 변경(배경색) */
#p11:checked ~.pos1>label:nth-child(1) {
	background-color: #F15F5F;
}

#p22:checked ~.pos1>label:nth-child(2) {
	background-color: #F15F5F;
}

#p33:checked ~.pos1>label:nth-child(3) {
	background-color: #F15F5F;
}

#p44:checked ~.pos1>label:nth-child(4) {
	background-color: #F15F5F;
}
</style>
<!-- <link type="text/css" rel="stylesheet" href="css/main.css">  -->
</head>
<body>
	<%@ include file="left_menu.jsp"%>
	<div id="k_main">
		<div id="main">
			<div class="slider">
				<input type="radio" name="pos" id="p1" checked> <input
					type="radio" name="pos" id="p2"> <input type="radio"
					name="pos" id="p3"> <input type="radio" name="pos" id="p4">
				<ul>
					<li>. WTF CODE1</li>
					<li>. WTF CODE2</li>
					<li>. WTF CODE3</li>
					<li>. WTF CODE4</li>
				</ul>
				<p class="pos">
					<!-- 라디오 버튼은 모양을 바꿀 수 없기 때문에
						모양을 바꾸는게 수월한 레이블을 사용 -->
					<label for="p1"></label> <label for="p2"></label> <label for="p3"></label>
					<label for="p4"></label>
				</p>
			</div>
		</div>
		<div id="main1">
			<div class="slider1">
				<input type="radio" name="pos" id="p11" checked> <input
					type="radio" name="pos" id="p22"> <input type="radio"
					name="pos" id="p33"> <input type="radio" name="pos"
					id="p44">
				<ul>
					<li>. MY CODE1</li>
					<li>. MY CODE2</li>
					<li>. MY CODE3</li>
					<li>. MY CODE4</li>
				</ul>
				<p class="pos1">
					<!-- 라디오 버튼은 모양을 바꿀 수 없기 때문에
						모양을 바꾸는게 수월한 레이블을 사용 -->
					<label for="p11"></label> <label for="p22"></label> <label
						for="p33"></label> <label for="p44"></label>
				</p>
			</div>
		</div>
	</div>
	
	<div id="mini_m0">

		<div id="mini_m1">
			<a class="a1" href="Postout_q">
				<div id="mini_btn">
					<img src="병알.gif" style="width: 130px">
					<h3>WTF CODE</h3>
				</div>
			</a>
		</div>
		<div id="mini_m1">
			<div id="mini_btn">
				<a class="a1" href="Postout"> <img src="병알.gif" style="width: 130px">
					<h3>MY CODE</h3>
				</a>
			</div>
		</div>
		<div id="mini_m1">
			<a class="a1" href="#" onclick="location.href='project.jsp'">
				<div id="mini_btn">
					<img src="병알.gif" style="width: 130px">
					<h3>PROJECT</h3>
				</div>
			</a>
		</div>
	</div>
</body>

<c:if test="${!empty msg}">
	<script type="text/javascript">
		alert('${msg}');
	</script>
	<c:remove var="msg" scope="session" />
</c:if>
</html>