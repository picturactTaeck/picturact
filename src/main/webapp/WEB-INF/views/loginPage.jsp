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

<!--  1. 파일 따로 만들기, jquery 쓰기--> 
</head>

<!-- 전체적인 디자인 변경 -->
<body id="page-top" >
    	
        <!-- Top content -->
         <!-- 상단바에서 loginform confirm 버튼까지 --> 
                 <div class="container" style="position:absolute; top:35%; left:5%; margin:auto;">
                        <div class="col-sm-7">
<!--                        h1안쓰고 font로 크기, 굵기조절 -->
                            <font size="6">Our Project <b>Piacturact</b></font>
                            	<p style="padding-top:7%; padding-left: 5%;">
	                            	2016.06.28 ~ 2016.07.31(약 1개월)	SNS와 비슷한 프로그램
                            	</p>
<!--                             	onclick 없애고 스크립트로 하기 -->
<!--                             	<input type="button" class="btn btn-default"  value="Login" onclick="div_show(this.value);" /> -->
<!--                             	<input type="button" class="btn btn-default" value="Join" onclick="div_show(this.value);" /> -->
							 <div class="col-sm-8" style="padding-top:7%;">
							  <span style="float:right" >
                            	<input type="button" class="btn btn-default"  id="Login" value="Login" />
                            	<input type="button" class="btn btn-default" id="Join" value="Join" />
                            </span>
                             </div>
                        </div>
<!--                         include하는 파일 내 html, head, body 없애기 -->
                        <!-- ■■■■■■■■■■■■ 로그인 (가입 페이지 포함) 페이지 ■■■■■■■■■■■■■■■ -->
                        <div id="changeLogin" class="col-sm-5" style="display:;">
<%--                         	<jsp:include page="startPageForm/loginForm.jsp"></jsp:include> --%>
							<%@ include file="startPageForm/loginForm.jsp"%>
                        </div>
                        
                        <div id="changeJoin" class="col-sm-5" style="display:none;">
<%--                         	<jsp:include page="startPageForm/join.jsp"></jsp:include> --%>
							<%@ include file="startPageForm/join.jsp"%>
                        </div>
                        <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
					
                    </div>
 	    <!-- Javascript -->
        <script src="resources/bootstrap/js/bootstrap.min.js"></script>
        <script src="resources/userResource/js/login.js"></script>
		<script src="resources/userResource/js/join.js"></script>
</body>
</html>
