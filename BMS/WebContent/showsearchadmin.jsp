<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.dai.entity.Admin"%>
<%@page import="java.util.List"%>
<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<meta charset="UTF-8">
<title>管理员查询展示</title>
<link rel="stylesheet"
	href="bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css" />
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
			<div id="rightmain" class="col-lg-8 pull-right">
				<!----路径导航---->
				<ol class="breadcrumb" style="background-color: white;">
					<li><a href="main.jsp">首页</a></li>
					<li class="active">管理员信息</li>
				</ol>
				<!----搜索框---->
				<form action="sas" method="post">
					<div class="col-lg-6 pull-right">
						<div class="input-group">
							<input type="text"  name="search" class="form-control"  placeholder="请输入要查找的管理员姓名"/>
							<span class="input-group-btn">
								<button class="btn btn-default" type="submit">搜索!</button>
							</span>
						</div>
					</div>
				</form>
				<!----table---->
				<% List<Admin> admin = (List<Admin>)request.getAttribute("admin");				
					if(admin == null && admin.size() == 0){%>
						<h3>还没有管理员，赶快去<a href="/addadmin.html">招聘</a>个吧~~~</h3>						
					<%}else { 
					DateFormat df = new SimpleDateFormat("yyyy-MM-dd");%>
		
				<div id="dt_id">
					<table class="table table-bordered">
						<thead>
							<th>编号</th>
							<th>姓名</th>
							<th>年龄</th>
							<th>入职日期</th>
							<th>密码</th>
							<th>操作</th>
						</thead>
						<%for(Admin adminEntity : admin){%>						
						<tbody>						
							<tr>
								<td><%=adminEntity.getId() %></td>
								<td><%=adminEntity.getAdminname() %></td>
								<td><%=adminEntity.getPassword() %>
								<td><a href="das?id=<%=adminEntity.getId() %>">&nbsp;<span class="glyphicon glyphicon-trash">删除&nbsp;</span></a><a href="mas?id=<%=adminEntity.getId()%>&
								adminname=<%=adminEntity.getAdminname() %>&password=<%=adminEntity.getPassword() %>"><span class="glyphicon glyphicon-pencil">修改</span></a></td>
							</tr>							
						</tbody>
						<%}
							}%>
					</table>
				</div>
				
</body>
</html>