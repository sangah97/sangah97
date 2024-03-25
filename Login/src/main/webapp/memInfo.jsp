<%@page import="biz.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보</title>
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
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberVO mbean = mdao.selectedMem(id);
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
					<tr>
						<td><%=mbean.getId() %></td>
						<td><%=mbean.getPwd() %></td>
						<td><%=mbean.getName() %></td>
						<td><%=mbean.getEmail() %></td>
					</tr>		
					<tr>
						<td colspan="4">
							<button onclick="location.href='./memUpdate.jsp'" class="btn btn-primary">회원수정</button> 
							<button onclick="location.href='#'" class="btn btn-primary">회원삭제</button> 
							<button onclick="location.href='./memList.jsp'" class="btn btn-primary">목록보기</button> 
							<button onclick="location.href='./join.jsp'" class="btn btn-primary">회원가입</button> 
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>