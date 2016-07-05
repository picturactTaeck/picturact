<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!--  <meta charset="utf-8"> -->
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>스타트 페이지</title>

<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>

<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">        
<link rel="stylesheet" href="resources/assets/bootstrap/css/bootstrap.min.css">
<script type="text/javascript">
function div_show(s,ss){
	if(s=="Join"){
		document.getElementById("changeLogin").style.display="none";
		document.getElementById("changeJoin").style.display="";
	}else{
		document.getElementById("changeJoin").style.display="none";
		document.getElementById("changeLogin").style.display="";
	}
}

</script>
</head>
<body>
	
<body id="page-top" >
    	
        <!-- Top content -->
         <!-- 상단바에서 loginform confirm 버튼까지 -->
        <div>
        	<!-- 상단바 -->
			<div  class="navbar-inverse">
				 <!-- 상단바 메뉴 영역-->
				<div class="container">
					<!-- 상단바 메뉴 글자 영역 -->
					<div class="navbar-header">
						<a class="navbar-brand" href="#page-top">Picturact</a>
					</div>
				</div>
			</div>
			
			<!-- start.jsp 부분(소개/로그인/가입) -->			
                <div class="container">
                        <div class="col-sm-7">
                            <h1>Our Project <strong>Piacturact</strong></h1>
                            	<p>
	                            	2016.06.28 ~ 2016.07.31(약 1개월)
	                            	SNS와 비슷한 프로그램
                            	</p>
                            	<input type="button" class="btn btn-default"  value="Login" onclick="div_show(this.value,'changeLogin');" id="login"/>
                            	<input type="button" class="btn btn-default" value="Join" onclick="div_show(this.value,'changeJoin');" id="join"/>
                            	
                        </div>
                        
                        <!-- ■■■■■■■■■■■■ 로그인 (가입 페이지 포함) 페이지 ■■■■■■■■■■■■■■■ -->
                        <div id="changeLogin" class="col-sm-5" style="display:;">
                        	<jsp:include page="startPageForm/loginForm.jsp"></jsp:include>
                        </div>
                        
                        <div id="changeJoin" class="col-sm-5" style="display:none;">
                        	<jsp:include page="startPageForm/join.jsp"></jsp:include>
                        </div>
                        <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
						
                    </div>
            </div>

 	    <!-- Javascript -->
        <script src="resources/assets/bootstrap/js/bootstrap.min.js"></script>
<!--         <script src="resources/assets/js/scripts.js"></script> -->
</body>
</html>
