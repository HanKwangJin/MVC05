<%@page import="kj.kjca.model.MemberVO"%>
<%@page import="kj.kjca.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="ctp" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css' rel='stylesheet'>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <form action='${ctp}/memberUpdate.do' method='post'> 
	 <input type='hidden' name='num' value='${vo.num}'/> 
	 <table class='table table-hover' style='width:600px' align='center' border='1'> 
	 <tr><td colspan='2' align='center'><h2>${vo.name} 회원의 상세정보</h2></td></tr> 
	 <tr> 
	 <td align='center'>번호</td><td align='center'>${vo.num}</td></tr> 
	 <tr><td align='center'>아이디</td><td align='center'>${vo.id}</td></tr> 
	 <tr><td align='center'>비밀번호</td><td align='center'>${vo.pass}</td></tr> 
	 <tr><td align='center'>이름</td><td align='center'>${vo.name}</td></tr> 
	 <tr><td align='center'>나이</td><td align='center'>
	 <input type='text' name='age' value='${vo.age}'/></td></tr> 
	 <tr><td align='center'>이메일</td><td align='center'>
	 <input type='text' name='email' value='${vo.email}'/></td></tr> 
	 <tr><td align='center'>전화번호</td><td align='center'>
	 <input type='text' name='phone' value='${vo.phone}'/></td> 
	 </tr> 
	 <tr><td colspan='2' align='center'> 
	 <input type='submit' value='수정하기' class='btn btn-success'/> 
	 <input type='reset' value='취소' class='btn btn-danger'/> 
	 <input type="button" value="리스트" onclick="location.href='${ctp}/memberList.do'" class='btn btn-success'/> 
	 </tr> 
	 </table> 
	 </form> 
</body>
</html>