<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
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
	padding-top: 90px;
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
#data1{
	width: 309px;
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
#p1{
color: white;

}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<body>
	<%@ include file="left_menu.jsp"%>
	
	<div id="main">
		<div id="main_1">
			<h1>MODIFYING <br>INFORMATEION</h1>
			<form action="updatePwd" method="post" onsubmit="return updateCheck()">
			
				<p id="text"><b>NEW NICK NAME</b></p>
				<input type="text" id="data1" name="m_nickname" class="nickname" >
				<input type="button" value="D-Check" id="pk_btn">
				
				<p id="text"><b>NEW PASSWARD</b></p>
				<input type="password" id="data" name="m_pw" class="pwd1"><br>
				
				<p id="text"><b>PASSWARD_CHECK</b></p>
				<input type="password" id="data" class="pwd">
				<p class="p1"> </p>
				
				<input type="submit" value="CHANGE" id="data_btn">
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	let result = false;
	let pkOk= false;
	
	function updateCheck(){
		if(pkOk == false){
			alert("비밀번호를 확인해주세요");
		}	
		return pkOk;
	}

	$("#pk_btn").click(function(){ // 중복확인 버튼
		result = window.open("nickck.jsp?m_nickname="+$(".nickname").val()+"","중복체크","width=600, height=400");
	});	
	$("#pk_btn1").click(function(){ // 중복확인 버튼
		result = window.open("idck.jsp?m_id="+$(".id").val()+"","중복체크","width=600, height=400");
	});
	
	
	 $(".pwd1").keyup(function () {
	        var pwd1 = $(".pwd").val();
	        var pwd2 = $(".pwd1").val();
	  
	        
	        if (pwd1 == "" || pwd2 ==""){
	        	$(".p1").html("빈칸을 모두 채워주세요.");
	        	pkOk= false;
	        }
	        else if ( pwd1 != ".pwd1" && pwd2 == ".pwd" ) {
	        	$(".p1").html("비밀번호가 맞지 않습니다.");
	        	pkOk= false;
	        } 
	        else if (pwd1 != ".pwd" || pwd2 != ".pwd1") {
	            if (pwd1 == pwd2) {
	            	$(".p1").html("성공!");// 비밀번호 일치 이벤트 실행
	            	pkOk= true;
	            } 
	            else {
	            	$(".p1").html("비밀번호가 맞지 않습니다.");// 비밀번호 불일치 이벤트 실행
	            	pkOk= false;
	            }
	        } 
	    });
	 $(".pwd").keyup(function () {
	        var pwd1 = $(".pwd").val();
	        var pwd2 = $(".pwd1").val();
	  
	        if (pwd1 == "" || pwd2 ==""){
	        	$(".p1").html("빈칸을 모두 채워주세요.");
	        	pkOk= false;
	        }
	        else if ( pwd1 != ".pwd1" && pwd2 == ".pwd" ) {
	        	$(".p1").html("비밀번호가 맞지 않습니다.");
	        	pkOk= false;
	        } 
	        else if (pwd1 != ".pwd" || pwd2 != ".pwd1") {
	            if (pwd1 == pwd2) {
	            	$(".p1").html("성공!");// 비밀번호 일치 이벤트 실행
	            	pkOk= true;
	            } 
	            else {
	            	$(".p1").html("비밀번호가 맞지 않습니다.");// 비밀번호 불일치 이벤트 실행
	            	pkOk= false;
	            }
	        } 
	      
	    });

	

</script>
</html>