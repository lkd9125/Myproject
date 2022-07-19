<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<style type="text/css">
*{
   padding:0;
   margin: 0;
   /*
   border: 1px solid;
   */
}
body {
	background-color: #FCF6F5;
}

a:visited, a:link {
	color: #FCF6F5;
}
#menu{
   width: 250px;
   height: 750px;
   float: left;
   border: 1px solid;
}
#wrap{
   margin-left: 250px;
}
#bList {
   width : 800px; 
   border : 3px solid;
   border-color : lightgray;
}
td {
   width : 800px; 
   border : 3px solid;
   border-color : lightgray;
}* {
	padding: 0;
	margin: 0;
}

/* header 시작*/
header {
	margin: 10px;
	height: 75px;
	background-color: #7b9acc;
	border-radius: 20px;
	margin-bottom: 20px;
}

.button {
	position: relative;
}

.header>.button>button {
	margin-top: 16px;
	margin-bottom: 16px;
	margin-left: 30px;
	width: 200px;
	height: 40px;
	background-color: #7b9acc;
	color: #FCF6F5;
	border: 2px solid #7b9acc;
	font-size: 20px;
}

button:hover {
	cursor: pointer;
}

button:nth-child(4) {
	position: absolute;
	right: 30px;
}

d:hover {
	text-decoration: underline;
}
.blind {
	display: none;
}
.success{
	position: absolute;
	right: 30px;
	color: white;
	line-height: 75px;
}
#my_code{
	margin-left : 300px;
}
</style>
</head>
<body>
<%@ include file="left_menu.jsp"%>
 
<div id="my_code">
   <h1>The Question Board</h1>
 
    <!-- 글목록 위 부분-->
    <br>
    <div id="topForm">
            <a href="post(jingang).jsp" ><input type="button" value="글쓰기" ></a>
    </div>
    
    <!-- 게시글 목록 부분 -->
    <br>
    <div id="board">
        <table id="bList">
		<tr>
			<td>글번호</td>
			<th>제목</th>
			<th>작성자</th>
		</tr>
		<c:forEach var="data" items="${qList}">
			<tr>
			<!-- 링크만 거는게 아니라 코드까지 다 같이가져야 개별적인 속성? 같은게 부여됨 -->
				<th><a href="postoutput?q_num=${data.q_num}" style="color:black">${data.q_num}  </a></th>
				<td>${data.q_title}</td>
				<td>${data.m_id}</td>
			</tr>
		</c:forEach>
	</table>
    </div>
    
    <!--  검색 부분 -->
    <br>
    <div id="searchForm">
        <form>
            <select name="opt">
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
                <option value="3">글쓴이</option>
            </select>
            <input type="text" size="20" name="condition"/>&nbsp;
            <input type="submit" value="검색"/>
        </form>    
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