<%@page import="biz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보 수정 처리</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
	<jsp:useBean id="mbean" class="vo.MemberVO">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
<%
	// hidden 값받기
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	// 비빌번호 가져옥
	String pwd = mdao.getPw(id);
	
	// update
	if(mbean.getPwd().equals(pwd)){
		mdao.updateMem(mbean);
		response.sendRedirect("./memList.jsp");
	}else{
%>
	<script>
		alert('비밀번호가 다릅니다.');
		history.go(-1);
	</script>
<%		
	}
%>
</body>
</html>