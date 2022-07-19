<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:remove var="id" scope="session" />
<c:remove var="nickname" scope="session" />
<c:remove var="pw" scope="session" />
<jsp:forward page="home2.jsp"/>