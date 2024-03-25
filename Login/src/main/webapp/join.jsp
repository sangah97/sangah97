<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
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
	<div class="card-body">
		<div id="wrap">
			<div class="panel-heading">
				<h2>회원가입</h2>
			</div>
			<div class="panel-body">
				<form action="./joinCtrl.jsp" method="post">
					<table class="table">
						<tr>
							<th>아이디 : </th>
							<td><input type="text" name="id" id="id" placeholder="ID"/></td>
						</tr>
						<tr>
							<th>비밀번호 : </th>
							<td><input type="password" name="pwd" id="pwd" placeholder="PASSWORD"/></td>
						</tr>
						<tr>
							<th>이름 : </th>
							<td><input type="text" name="name" id="name" placeholder="NAME"/></td>
						</tr>
						<tr>
							<th>이메일 : </th>
							<td><input type="text" name="email" id="email" placeholder="EMAIL"/></td>
						</tr>
						<tr class="btn">
							<td colspan="2">
								<input type="submit" value="회원가입" class="btn btn-primary"/>
								<input type="reset" value="취소" class="btn btn-secondary"/>
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>