<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정전 비밀번호 확인</title>
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
	padding-top: 130px;
	font-size: 40pt;
	padding-bottom: 50px;
}
#text{
	color:#353535;
	padding-top: 30px;
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
<%
	String str1 = (String)session.getAttribute("pw");
	
%>

	<%@ include file="left_menu.jsp"%>
	
	<div id="main">
		<div id="main_1">
			<h1>MODIFYING <br>INFORMATEION</h1>
			
				
			
				<p id="text"><b>PASSWARD</b></p>
				<input type="password" id="data" name="m_pw" class="pwd"><br>
				<p id="p1"></p>
				
				<input type="button" value="정보 수정하기" id="data_btn">
			
		</div>
	</div>
</body>

<script type="text/javascript">
	
	 var i=null;
	
	 $(".pwd").keyup(function () {
	        var pwd1 = $(".pwd").val();
	        var pwd2 = "<%=str1%>";
	        
 	        if (pwd1 == pwd2) {
	           // $(".p1").html("성공!");// 비밀번호 일치 이벤트 실행
	           return i++;
	            
	        }
	        else if ( pwd1 != pwd2 ) {
	        	//$(".p1").html("비밀번호가 맞지 않습니다.");
	        	return i=null;
	        } 
	    });
 	 $("#data_btn").click(function(){
		if (i != null){
			location.href = "change_member.jsp";
		}
		else if (i == null){
			alert("비밀번호가 틀렸습니다");
		}
	});
	
	</script>
</html>