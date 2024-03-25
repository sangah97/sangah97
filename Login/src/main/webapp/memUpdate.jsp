<%@page import="biz.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 정보 수정</title>
	<link rel="stylesheet" href="https://unpkg.com/bootstrap@3.3.7/dist/css/bootstrap.min.css">
	<style>
		#wrap{
			width: 500px;
			margin: 50px auto;
			padding: 20px;
			background-color: #D4F4FA;
			border-radius: 20px;
		}

	</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset=utf-8");
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberVO mbean = mdao.selectedMem(id);
%>
	<div class="card-body">
		<div id="wrap">
			<div class="panel-heading">
				<h2>회원 정보 수정</h2>
			</div>
			<div class="panel-body">
				<form action="./memUpdateCtrl.jsp" method="post">
					<table class="table">
						<tr>
							<th>아이디 : </th>
							<td><%=mbean.getId() %></td>
						</tr>
						<tr>
							<th>비밀번호 : </th>
							<td><input type="password" name="pwd" id="pwd"/></td>
						</tr>
						<tr>
							<th>이름 : </th>
							<td><input type="text" name="name" id="name" placeholder="<%=mbean.getName() %>"/></td>
						</tr>
						<tr>
							<th>이메일 : </th>
							<td><input type="text" name="email" id="email" placeholder="<%=mbean.getEmail() %>"/></td>
						</tr>
						<tr class="btn">
							<td colspan="2">
								<input type="hidden" name="id" value="<%=mbean.getId() %>" />
								<input type="submit" value="정보수정" class="btn btn-primary"/>
							</td>
						</tr>
					</table>
				</form>
				<button onclick="location.href='./memList.jsp'" class="btn btn-secondary">목록보기</button>
			</div>
		</div>
	</div>
</body>
</html>