<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 찾기</title>
</head>
<body>
<style type="text/css">
*{
	padding:0;
	margin: 0;
	/*
	border: 1px solid;
	*/
}

body{
	background-color: #F15F5F;
}

#main{
	margin-left: 250px;
	text-align: center;
}
#main_1 {
	text-align: center;
}
#main_1>h1{
	padding-top: 110px;
	font-size: 40pt;
	padding-bottom: 50px;
}
#text{
	color:#353535;
}
#data{
	width: 420px;
	height: 30px;
	background-color:#F15F5F;
	border: 5px dashed #353535; 
	border-radius: 20px;
	color: #353535;
	margin-bottom: 20px;
	margin-top: 2px;
}


#pk_btn {
	width: 100px;
	height: 40px;
	background-color:#353535;
	border: 5px solid #353535;
	border-radius: 50px;
	color:  #F15F5F;
	font-size: 12pt;
	margin-top: 10px;
}
#pk_btn1 {
	width: 100px;
	height: 40px;
	background-color:#353535;
	border: 5px solid #353535;
	border-radius: 50px;
	color:  #F15F5F;
	font-size: 12pt;
	margin-top: 10px;
}
#pk_btn:active{
	box-shadow: 1px 1px 5px white;
}
#pk_btn1:active{
	box-shadow: 1px 1px 5px white;
}
#data_btn{
	width: 433px;
	height: 50px;
	background-color:#353535;
	border: 5px solid #353535;
	border-radius: 50px;
	color:  #F15F5F;
	font-size: 12pt;
	margin-top: 10px;
}
#data_btn:active{
	box-shadow: 1px 1px 5px white;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
	<%@ include file="left_menu.jsp"%>
	
	<div id="main">
		<div id="main_1">
			<h1>SEARCH <br>INFORMATION</h1>
			
			<form action="joinProc.jsp" method="post">
			
					<p id="text"><b>NICK NAME</b></p>
					<input type="text" id="data" name="m_nickname" class="nickname" >
					
					<p id="text"><b>ID</b></p>
					<input type="text" id="data" name="m_id" class="id">
					
				<p id="text"><b>PASSWARD</b></p>
				<input type="password" id="data" name="m_pw"><br>
				
				
				<input type="submit" value="정보 찾기" id="data_btn">
			</form>
		</div>
	</div>
</body>
</body>
</html>