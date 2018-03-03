<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dai.entity.Book"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书修改</title>
<link rel="stylesheet"
	href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="css/add.css" />
<script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
<!----导航条---->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid ">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="main.jsp" style="color: #FFFFFF;">信息管理</a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">系统设置<span class="caret"></span></a>
						<ul class="dropdown-menu">
						    <li><a href="showadmin.jsp">管理员设置</a></li>
							<li><a href="showbshelf.jsp">书架设置</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="login.jsp">退出登陆</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!----导航结束---->
	<!----主界面---->
	<div id="main" class="container">
		<div class="row">
			<!----左边菜单栏---->
			<div id="leftmenu" class="col-lg-3">
				<div style="font-size: 18px; color: green; text-align: center; padding-top: 10px; margin-bottom: 10px;">功能菜单</div>
				<!----菜单栏---->
				<div class="nav" style="padding-top: 20px;">
					<a href="#select" id="dropdownMenu1" data-toggle="collapse" 
					aria-expanded="true"> <span class="glyphicon glyphicon-user"></span>系统查询
					</a>
					<ul class="nva collapse" id="select">
						<li><a href="showbook.jsp">图书信息查询</a></li>
						<li><a href="showreader.jsp">读者信息查询</a></li>
					</ul>
				</div>
				<div class="nav" style="padding-top: 20px;">
					<a href="#reader" id="dropdownMenu1" data-toggle="collapse" 
					aria-expanded="true"> <span class="glyphicon glyphicon-user"></span>读者管理
					</a>
					<ul class="nva collapse" id="reader">
						<li><a href="readermodify.jsp">修改读者信息</a></li>
						<li><a href="readeradd.jsp">添加读者</a></li>
					</ul>
				</div>
				<div class="nav" style="padding-top: 20px;">
					<a href="#book" id="dropdownMenu1" data-toggle="collapse"
						aria-expanded="true"> <span class="glyphicon glyphicon-book"></span>图书管理
					</a>
					<ul class="nva collapse" id="book">
						<li><a href="bookmodify.jsp">修改图书信息</a></li>
						<li><a href="bookadd.jsp">添加图书</a></li>
						
					</ul>
				</div>
				<div class="nav" style="padding-top: 20px;">
					<a href="#tsjh" id="dropdownMenu1" data-toggle="collapse"
						aria-expanded="true"> <span class="glyphicon glyphicon-book"></span>图书借还
					</a>
					<ul class="nva collapse" id="tsjh">
						<li><a href="bookborrow.jsp">图书借阅</a></li>
						<li><a href="bookrenew.jsp">图书续借</a></li>
						<li><a href="bookback.jsp">图书归还</a></li>
					</ul>
				</div>
				<!----菜单栏结束---->
			</div>
			<!----左边菜单栏结束---->
			<!----右边主界面---->
			<div id="rightmain" class="col-lg-6 pull-right">
				<!---修改图书信息----->
				<p class="text-center">
					<span id="text">修改图书信息</span>
				</p>
				<% Book book = (Book)request.getAttribute("book");%>
				<form class="form-horizontal" action="aus?id=<%=book.getId()%>" method="post" id="form1">
					<table style="border-collapse: separate; border-spacing: 20px">
						<tr>
							<td>编&nbsp;&nbsp;&nbsp;号：</td>
							<td>
								<div class="control-group">
									<div class="controls">
										<%=book.getId() %>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>书&nbsp;&nbsp;&nbsp;名：</td>
							<td>
								<div class="control-group">
									<div class="controls">
										<input type="text" id="inputPassword" value=<%=book.getName() %>
											name="name">
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>价&nbsp;&nbsp;&nbsp;格：</td>
							<td>
								<div class="control-group">
									<div class="controls">
										<input type="text" id="inputPassword" value=<%=book.getPrice() %>
											name="price">
									</div>
								</div>
							</td>
						</tr>
					</table>
					<div style="width: 150px;margin-left: 100px">
						<button class="btn btn-large btn-block btn-primary" type="submit">确认修改</button>
					<button class="btn btn-large btn-block" type="button" onclick="window.location.href='sa'">放弃修改</button>
					</div>
				</form>
			</div>
		</div>
		<!----右边主界面结束---->
		</div>
	</div>
			

</body>
</html>