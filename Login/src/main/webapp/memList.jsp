<%@page import="biz.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 목록</title>
	<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
	<style>
		#wrap{
			width: 960px;
			margin: 20px auto;
			border: 1px solid #ccc;
			border-radius: 8px;
			padding: 20px;
		}
	</style>
</head>
<body>
<%
	MemberDAO mdao = new MemberDAO();
	ArrayList<MemberVO> list = mdao.allSelectMem();
%>
	<div class="card-body">
		<div id="wrap">
			<div class="panel-heading">
				<h2>회원 목록</h2>
			</div>
			<div class="panel-body">
				<table class="table">
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>이메일</th>
					<tr>
<%
	for(int i=0;i<list.size();i++){
		MemberVO bean = list.get(i);
%>
					<tr>
						<td><a href="memInfo.jsp?id=<%=bean.getId() %>"><%=bean.getId() %></a></td>
						<td><%=bean.getPwd() %></td>
						<td><%=bean.getName() %></td>
						<td><%=bean.getEmail() %></td>
					</tr>
<%	
	}
%>				
					<tr>
						<td colspan="4">
							<button onclick="location.href='./join.jsp'" class="btn btn-primary">회원가입</button> 
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>