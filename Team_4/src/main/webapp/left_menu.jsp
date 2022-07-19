<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>왼쪽 고정 메뉴</title>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
/*클릭하지 않았을때*/
 a:link { color: white; text-decoration: none;}
 /*한번 클릭 or 다녀갔던 곳*/
 a:visited { color: white; text-decoration: none;}
 /*마우스 가져갔을때*/
 a:hover { color: #F15F5F; text-decoration: none;}

.a1:hover{
	color:#353535;
}
*{
	padding: 0;
	margin: 0;	
	/*
	border: 1px solid;
	*/
}

/*왼쪽 고정 메뉴 디자인 */
#menu{
	  list-style-type: none;
	  width: 250px;
	  background: #353535;
	  height: 100%;
	  /*overflow: auto;*/
	  position: fixed;
	  padding-top: 10px;
	}
#home{
	border : 3px dashed #F15F5F;
	border-radius: 20%;
	width: 200px;
	color: #F15F5F;
	text-align: center;	
	margin-top: 20px;
	margin-bottom: 30px;
	margin-left: 20px;
	font-size: 25pt;
}
#lg{
	padding-left: 25px;
}
#lg_m{
	text-align: center;
	width: 190px;
	height: 30px;
	margin-bottom: 5px;
}
#login_btn{
	border: 1px solid #F15F5F;
	background-color: #F15F5F;
	border-radius: 5px;
	text-align: center;
	margin-left: 25px;
	width: 192px;
	height: 40px;
	line-height: 38px;
	font-size: 15pt;
	color: white;
}
#login_btn:active{
	box-shadow: 1px 1px 3px;
}
#login{
	color: white;
}
#jb{
	padding-right: 30px;
	height: 30px;
}
#join{
	float:right;
	font-size: 8.5pt;
	margin-top: 5px;
	margin-right: 7px;
}
#mini_m{
	color: white;
	padding-left: 25px;
}
#mini_m>h3{
	margin-top: 25px;
	margin-bottom: 5px;
	color: #F15F5F;
	font-size: 23pt;
}
#mini_m>p{
	font-size: 12pt;
}
#down_m{
	color: white;
	height: 500px;
	margin-top: 150px;
	font-size: 8pt;
	padding-left: 20px;
}
.blind{
	display: none;
}
<!-- 바뀐 메뉴 css -->
#login_ok{
	text-align: center;
	width: 250;
}
#new_member{
	color: white;
	padding-left: 90px;
	padding-bottom: 50px;
}
#update{
	float: left;
	font-size: 10pt;
	margin-bottom: 30px;
	margin-top: 2px;
}
#logout{
	float: left;
	margin-left: 5px;
	font-size: 10pt;
	margin-bottom: 18px;
	margin-top: 2px;
}
#p1{
	padding-left: 27px;
	margin-top: 70px;
	margin-bottom: 35px;
}
#im_p{
	float: left;
	margin-left: 5px;
}
</style>
</head>
<body>
	<div id="menu">
		<a href="#" onclick="location.href='home2.jsp'"><h2 id="home">MY CODE SHARE</h2></a>
		<div id="login" class="change">
			<form action="login" method="post">
				<div id="lg"> 
					<input type="text" id="lg_m" name="m_id" placeholder="ID">
					<input type="password" id="lg_m" name="m_pw" placeholder="PW">
				</div>
				<input  type="submit" value="LOGIN" id="login_btn">
			</form>
				<div id="jb">
					<a href="#" onclick="location.href='find.jsp'">
						<div id="join"><b>정보찾기</b></div>
					</a>
					<a href="#" onclick="location.href='join.jsp'">
						<div id="join"><b>회원가입</b></div>
					</a>
				</div>
		</div>
		<div id="login_ok" class="blind">
			<p id="p1"></p>
			<div id="new_member">
				<div id="nm">
					<a href="#" onclick="location.href='update.jsp'">
						<div id="update"><b>UPDATE</b></div>
					</a>
						<p id="im_p">|</p>
					<a>
						<div id="logout"><b>LOGOUT</b></div>
					</a>
				</div>
			</div>
		</div>
		<div id="mini_m">
			<h3>MENU</h3>
			<p><a href="#" onclick="location.href='method.jsp'">MCS 사용법</a></p>
			<P><a href="Postout">코드 자랑하기</a></P>
			<p><a href="Postout_q">코드 질문하기</a></p> 
			<h3>GROUP</h3>
			<p><a href="#" onclick="location.href='team4.jsp'">팀원 소개</a></p>
			<p><a href="#" onclick="location.href='project.jsp'">프로젝트 소개</a></p>
		</div>
		<div id="down_m">
			<h4>GROUP 4</h4>
			<p>김진경 | 이경도 | 이민영 | 정경아</p>
		</div>
	</div>
</body>
<script type="text/javascript">

<%
	String str =(String)session.getAttribute("id");
%>

	var str = "<%=str %>";
	if (str != "null") {
	   $("#login").attr("class", "blind");
	   $("#login_ok").attr("class", "change");
	   $("#p1").html('"'+ '<b>'+str+'</b>' + '" 님 환영합니다!');
	   $("#p1").css("color","white" );
	   $("#p1").css("font-size","13pt" );
	}
	$("#logout").click(function() {
		location.href="logout.jsp";
	});
</script>
</html>