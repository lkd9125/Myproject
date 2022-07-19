<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자랑 글 목록</title>
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
#my_code{
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

/*테두리*/
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
#board{
	margin-top: 15px;
}
#bList{
	width: 950px;
	text-align: center;
	margin-left: 75px;
}
#up_index{
	height: 30px;
	
}
#up_index>td{
	border: 1px solid #353535;
	border-radius: 20px;
	width: 100px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 700;
}
#u_th1{
	border: 1px solid #353535;
	border-radius: 20px;
	width: 600px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 700; 
}
#u_th2{
	border: 1px solid #353535;
	border-radius: 20px;
	width: 250px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 700; 
}
#bt_index{
	height: 100px;
}

/*목록 밑 부분*/
#searchForm{
	margin: 0 auto;
}
/*검색 공간*/
#search{
	float: left;
}

/*글작성 버튼*/
#topForm{
	margin-top: 5px;
}
/*검색 버튼*/
#sh_btn{
	border: 1px solid #353535;
	border-radius: 20px;
	width: 70px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 700; 
	height: 30px;
}
/*글쓰기 버튼 */
#w_btn{
	margin-left: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	width: 70px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 700; 
	height: 30px;
}
/*하단 검색 종류 선택*/
#w_type{
	margin-left: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	width: 90px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 700; 
	height: 30px;
	text-align: center;
}
#search_w{
	margin-left: 10px;
	border: 1px solid #353535;
	border-radius: 20px;
	width: 250px;
	color: #F15F5F;
	background-color: #353535;
	font-weight: 400; 
	height: 30px;
	text-align: center;
}

/*버튼 누를시 효과*/
#w_btn:active {
	box-shadow: 1px 1px 5px white;
}
#sh_btn:active{
	box-shadow: 1px 1px 5px white;
}

#box::-webkit-scrollbar {
    width: 20px;
  }
#box::-webkit-scrollbar-thumb {
    background-color: #353535;
    border-radius: 10px;
  }
#box::-webkit-scrollbar-track {
    background-color: #F15F5F;
  }
</style>
</head>
<body>
	<%@ include file="left_menu.jsp"%>

	<div id="my_code">
		<div id="head"></div>
		<h1>The code I wrote</h1>
		<div id="box" style="overflow: auto;">
			<!-- 게시글 목록 부분 -->
			<div id="board">
				<table id="bList">
				<tr id="up_index">
					<td>NUM</td>
					<th id="u_th1">제목</th>
					<th id="u_th2">작성자</th>
				</tr>
				<c:forEach var="data" items="${pList}">
				<div id="bbt_index">
					<tr id="bt_index">
					<!-- 링크만 거는게 아니라 코드까지 다 같이가져야 개별적인 속성? 같은게 부여됨 -->
						<th><a href="postoutput?b_num=${data.b_num}"
						style="color: black">${data.b_num} </a></th>
						<td>${data.b_title}</td>
						<td>${data.m_id}</td>
					</tr>
				</div>
				</c:forEach>
			</table>
			</div>

			<!--  검색 부분 -->
			<br>
			<div id="searchForm">
					<select name="opt" id="w_type">
						<option value="b_title">제목</option>
						<option value="b_text">내용</option>
						<option value="m_id">글쓴이</option>
					</select> 
					<input id="search_w" type="text" size="20" placeholder="검색내용을 입력하세요." name="condition" />&nbsp; 
					<input id="sh_btn" type="button" value="검색">
				<!-- 게시글 작성 버튼 -->
				<div id="topForm">
					<a href="m_code_w.jsp"><input id="w_btn" type="button" value="글쓰기"></a>
				</div>
			</div>
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