<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자랑 글 작성</title>
<style type="text/css">
*{
	padding: 0;
	margin: 0;
	/*
	border: 1px solid;
	*/
}
body{
	background-color:  #F15F5F;
}
#main{
	margin-left: 250px;
	text-align: center;
}
#head{
	height: 50px;
	margin-left: 250px;
}
h1{
	padding : 0 20px 5px 20px;
	font-size: 40pt;
	position: fixed;
	/*
	border: 5px solid #353535;
	*/
	background-color:  #F15F5F;
	color: #353535;
	margin-left: 405px;
	border-radius: 20px;
}
#box{
	position: inherit;
	margin-top:35px;
	margin-left: 90px;
	padding-top : 40px;
	width: 1100px;
	height: 570px;
	border: 8px solid #353535;
	border-radius: 40px;
}

/*제목 내용 묶어놓은 테이블*/
#tt{
	text-align: center; 
	/*
	border: 1px solid #dddddd;
	*/
	padding-left: 60px;
	padding-top: 15px;
}
#m_Title{
	width: 100px;
	margin-left: 10px;
	margin-bottom: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 35px;
	text-align: center;
	float: left;
	line-height: 35px;
}
#Title{
	float:left;
	width: 840px;
	margin-left: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	height: 35px;
	text-align: center;
	margin-bottom: 10px;
	margin-left: 10px;
	font-weight: 400; 
	font-size: 12pt;
}
#Typing{
	padding-top: 10px;
	width: 950px;
	margin-left: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	text-align: center;
	height: 445px;
	font-size: 12pt;
}
/*글쓰기 버튼*/
#go{
	width: 100px;
	border: 1px solid #353535;
	border-radius: 20px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	text-align: center;
	height: 35px;
}
#go:active{
	box-shadow: 1px 1px 5px white;
}
</style>
</head>
<body>

<%@ include file="left_menu.jsp"%>

<div id="main">	
	
	<div id="head"></div>
	<h1>The Question Board</h1>
		<div id="box">
		   <!-- 게시판 글쓰기 양식 영역 시작 -->
		   <div class="container">
		      <div class="row">
		      
		         <form id="tt" action="postpaper_q" method="post" >
		            <table class="table table-striped">
		                  <!--  
		               <thead>
		                  <tr>
		                     <th colspan="2" style="background-color: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
		                  </tr>
		               </thead>
		                  -->
		               <tbody>
		                  <tr >
		                     <td>
			                  	<div id="m_Title"> 제목 </div>
		                    	 <input id="Title" type="text" class="form-control"  name="qsTitle" maxlength="50" >
		                     </td>
		                  </tr>
		                  <tr>
		                     <td><textarea id="Typing" class="form-control" name="qsContent" maxlength="2048"></textarea></td>
		                  </tr>
		               </tbody>
		            </table>
		            <!-- 글쓰기 버튼 생성 -->
		            <input id="go" type="submit" class="btn btn-primary pull-right" value="글쓰기">
		         </form>
		         
		      </div>
		   </div>
		</div>
 </div>
   <!-- 게시판 글쓰기 양식 영역 끝 -->
</body>

<script type="text/javascript">
$('button:nth-child(2)').click(function() {
	location.href = "q_beforepost.jsp";
});
$('button:nth-child(3)').click(function() {
	location.href = "wtf_code.jsp";
});
$('button:nth-child(4)').click(function() {
	location.href = "login.jsp";
});
$("#btn6").click(function () {
	
	location.href="home2.jsp";		
	
});
 
</script>
</html>