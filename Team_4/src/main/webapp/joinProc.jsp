<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value='utf-8'/>
<jsp:useBean id="Dto" class="com.dto.MemberDto" scope="request"/>
<jsp:setProperty property="*" name="Dto" />

<jsp:forward page="newmember"/>
