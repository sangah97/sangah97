<%@page import="biz.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글처리
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 처리페이지</title>
</head>
<body>
	<!-- 파라미터값 변수 할당 -->
	<jsp:useBean id="mbean" class="vo.MemberVO">
		<jsp:setProperty name="mbean" property="*"/>
	</jsp:useBean>
<%
	/* MemberDAO객체를 생성하고 위에서 할당된 변수 통째로 추가 */
	MemberDAO mdao = new MemberDAO();
	mdao.insertMem(mbean);
%>
	<script>
		alert("회원가입 완료!");
		location.href="./memList.jsp";
	</script>
</body>
</html>