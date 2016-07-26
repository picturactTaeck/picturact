<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>스타트 페이지</title>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.css">

<!-- 내가 만드는 js파일 -->
<link rel="stylesheet" href="resources/userResource//css/placeholder.css" />
<link rel="stylesheet" href="resources/userResource/css/imageView.css" />
<link rel="stylesheet" href="resources/userResource/css/font.css" />
<link rel="stylesheet" href="resources/userResource/css/loginAndJoin.css?<?=filemtime('loginAndJoin.css')?>" />
<!--  1. 파일 따로 만들기, jquery 쓰기--> 

<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/userResource/js/login.js"></script>
<script src="resources/userResource/js/join.js"></script>

</head>

<!-- 전체적인 디자인 변경 -->
<body >

	<header>
		<div class="container" style="max-width: 1300px;margin-top: 20px; height:30px;">
			<div class="col-xs-6">
				<div style="float: left; font-size: 20; font-weight: bolder; ">picturact</div>
			</div>
			<div class="col-xs-6" style=" margin:5px 0px;">
				<div style="float: right; font-size: 15;font-weight: bold; margin-left: 10px;" class="changeLogin" >Join</div>
				<div style="float: right; font-size: 15;font-weight: bold; margin-left: 10px;" class="changeJoin">Loin</div>
			</div>

		</div>
	</header>
    	
        <!-- Top content -->
	<!-- 상단바에서 loginform confirm 버튼까지 -->
	<div class="container" style="height:70%;margin-top:5%;">
	<div style="position:relative;max-width:800px;height:300px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);">

		<div class="col-xs-6" style="" >
			<!--                        h1안쓰고 font로 크기, 굵기조절 -->
<!-- 			<font size="6">Our Project <b>Piacturact</b></font> -->
<!-- 			<p style="">2016.06.28 ~ -->
<!-- 				2016.07.31(약 1개월) SNS와 비슷한 프로그램</p> -->
<!-- 			<!--                             	onclick 없애고 스크립트로 하기 --> 
<!-- 			<!--                             	<input type="button" class="btn btn-default"  value="Login" onclick="div_show(this.value);" /> --> 
<!-- 			<!--                             	<input type="button" class="btn btn-default" value="Join" onclick="div_show(this.value);" /> --> 
				<div class="centered">
							<img style="margin: auto auto;" class="img-responsive article_img" src="/resources/img/logo.png" alt="">
				</div>
<!-- 			<div style="float: right"> -->
	 			<input type="button"	class="btn btn-default btn-sm changeLogin"  value="Login" /> 
	 			<input type="button" class="btn btn-default btn-sm changeJoin"  value="Join" />

<!-- 			</div> -->
		</div>
		<div class="col-xs-1" style="" ></div>
		<!--                         include하는 파일 내 html, head, body 없애기 -->
		<!-- ■■■■■■■■■■■■ 로그인 (가입 페이지 포함) 페이지 ■■■■■■■■■■■■■■■ -->
		<div id="changeView" class="col-xs-5" >
			<%@ include file="startPageForm/loginForm.jsp"%>
			<%@ include file="startPageForm/joinForm.jsp"%>
		</div>

	
		</div>

	</div>


	<!-- Javascript -->
        
</body>
</html>
