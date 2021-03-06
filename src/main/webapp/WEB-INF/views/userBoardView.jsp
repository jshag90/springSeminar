<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Spring Seminar</title>

<!-- Bootstrap Core CSS -->
<link href="./resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Theme CSS -->
<link href="./resources/css/clean-blog.min.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="./resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>

</head>
<body>
	<!-- Navigation -->
	<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header page-scroll">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> Menu <i
					class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="./usercontent">Spring seminar</a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="./usercontent?&pageNo='1'">BULLETIN BOARD</a></li>
				<li><a href="./noticeboardlist">NOTICE</a></li>
				<li><a href="./userqnaboard">Q&A</a></li>
				<li><a href="./useraccountmodify">MY ACCOUNT</a></li>
				<li><a href="./logout">LOGOUT</a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Page Header -->
	<!-- Set your background image for this header on the line below. -->
	<header class="intro-header"
		style="background-image: url('./resources/img/home-bg.jpg')">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="site-heading">
					<h1>BULLETIN BOARD</h1>
					<hr class="small">
					<span class="subheading">It is a BULLETIN BOARD by JI</span>
				</div>
			</div>
		</div>
	</div>
	</header>


	<div id="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
				<div class="post-preview">
					<center>
						<table class="table table-hover">

							<colgroup>
								<col width="100" />
								<col width="500" />
							</colgroup>
							<tbody>
								<tr>
									<th align="center">TITLE</th>
									<td>${boardbybId.bTitle }</td>
								</tr>
								<tr>
									<th align="center">AUTHOR/HIT</th>
									<td>${boardbybId.bUserName }/${boardbybId.bHit}</td>
								</tr>
								<tr>
									<td colspan="5">${boardbybId.bContent }</td>
								</tr>

							</tbody>
						</table>
					</center>
					<p>

						<input type="button" value="목록" 	onclick="location.href='./usercontent?pageNo=1' ">
						
						<c:if test="${user.userName == boardbybId.bUserName}">
							<input type="button" value="수정"
								onclick="location.href='./userobardmodify?bId=${boardbybId.bId }' ">
							<input type="button" value="삭제"
								onclick="location.href='./userboardDeleteProc?bId=${boardbybId.bId }' " />
						</c:if>
					</p>
				</div>
			</div>
		</div>

<!-- Footer -->
		<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
					<ul class="list-inline text-center">
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-facebook fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li><a href="#"> <span class="fa-stack fa-lg"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<center>
					<p class="copyright text-muted">Copyright &copy; Your Website 2016</p>
					</center>
				</div>
			</div>
		</div>
		</footer>
	</div>
	
	<!-- jQuery -->
	<script src="./resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="./resources/js/jqBootstrapValidation.js"></script>
	<script src="./resources/js/contact_me.js"></script>

	<!-- Theme JavaScript -->
	<script src="./resources/js/clean-blog.min.js"></script>


</body>
</html>