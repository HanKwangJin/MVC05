<%@page import="kj.kjca.model.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kj.kjca.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>     
<!DOCTYPE html>
<html>
<head>
<link href='https:/cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet'>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function delFunction(num){
		location.href="${ctp}/memberDelete.do?num="+	num;	
	}
</script>
</head>
<body>
	<table class='table table-hover'>
		<tr><th>번호</th><th>아이디</th><th>비밀번호</th><th>이름</th>
		<th>나이</th><th>이메일</th><th>전화번호</th><th>삭제</th></tr>
		
		<c:forEach var="vo" items="${list}">
			<tr><td>${vo.num}</td>
			<td><a href='${ctp}/memberContent.do?num=${vo.num}'>${vo.id}</a></td>
			<td>${vo.pass}</td>
			<td>${vo.name}</td>
			<td>${vo.age}</td>
			<td>${vo.email}</td>
			<td>${vo.phone}</td>
			<td><input type="button" value="삭제" class="btn btn-danger" 
			onclick="delFunction(${vo.num})"/>
			</td></tr>
		</c:forEach>
		
		<tr><td colspan='8' align='center'>
		<input type="button" value="회원가입" class="btn btn-success" 
		onclick="location.href='${ctp}/memberRegister.do'" />
		</td>
		</tr>
		</table>
</body>
</html>