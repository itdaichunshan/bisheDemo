<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登陆页面</title>
<link rel="stylesheet"
	href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/login.css" />
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<!----导航条---->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid ">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="login.jsp" style="color: #FFFFFF;">图书馆管理系统</a>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!----导航结束---->

	<!----主界面---->
	<div id="main" class="container">
		<div class="row">
		
			<!----右边主界面---->
			<div id="rightmain" class="col-lg-6 pull-right">
				<!---登陆----->
				<p class="text-center">
					<span id="text">用户登陆</span>
				</p>
				<form class="form-horizontal" action="login" method="post" id="form1">
					<table style="border-collapse: separate; border-spacing: 20px" >
						<tr>
							<td>用户名：</td>
							<td>
								<div class="control-group">
									<div class="controls">
										<input type="text" id="inputPassword" placeholder="用户名" name="username">
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>密&nbsp;&nbsp;码：</td>
							<td>
								<div class="control-group">
									<div class="controls">
										<input type="password" id="inputPassword"
											placeholder="密码" name="password">
									</div>
								</div>
							</td>
						</tr>
						<tr><font color="red" size="2">${msg}</font></tr>
						<tr>
							<td colspan="2" align="center">
								<div class="btn-group btn-group-justified" role="group">
									<div class="btn-group" role="group">
										<button type="submit" class="btn btn-success" style=" width: 280px; ">登陆</button>
									</div>
								</div>
								<div class="btn-group btn-group-justified" role="group">
									<div class="btn-group" role="group">
										<button type="reset" class="btn btn-success" style=" width: 280px; ">重置</button>
									</div>
								</div>

							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!----右边主界面结束---->
	</div>
	</div>
	
</body>
</html>