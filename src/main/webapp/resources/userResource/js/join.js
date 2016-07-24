// ID check--------------------------------------------------------
$.ajaxSetup({
	type : "POST",
	async : true,
	dataType : "json",
	error : function(xhr){
		alert("회원 가입에 실패하였습니다.");
		alert("error html = " + xhr.statusText);
//		document.location.href="/";
	}
});
$(function(){
	$('#reset').on('click',function(){
		$('#idCheckDiv').text("");
	});
	$('#submitJoin').on('click',function join(){
		var formData = $("#join").serialize();
		alert(formData);
		$.ajax({
			url:'/join.member',
			data:formData,
			dataType:"text",
			success:function(data){
				alert("회원가입 성공!");
				document.location.href="/";
				
			},
			error: function(a,b,c){
				alert('실패 a : '+ a + " b : " + b + " c : " + c);
			}
		
		
		});
		
		 
		
//		$('#join').submit();
	});

	
	$("#joinId").on("blur", function(){
		var joinIdImpl = $("#joinId").val();
 		alert(joinIdImpl);
		if(joinIdImpl != ""){
			alert("hey");
		
			$.ajax({
				url:"/joinIdCheck.member",
				data:{	
					joinId:joinIdImpl
				},
				success:function(data){
// 					alert("data,"+data);
					idCheck(data);
					var html;
					if(data.result=="OK"){					
//						html="<font face='Impact' align='center'>OK</font>";
//						$("#idConfirm").html(html).css("color","blue");
						$("#idConfirm").attr("style","color:blue");
						$("#idConfirm").text("OK");
					}else{
//						html="<font face='Impact' align='center'>NO</font>";
//						$("#idConfirm").html(html).css("color","red");
						$("#idConfirm").attr("style","color:red");
						$("#idConfirm").text("NO");
					}
	
				}
			});
		
		}else{
			alert("아이디 란이 비었습니다.");
			$("#joinId").focus();
			$("#idConfirm").text("");
		}
		
	});
	
	
	function idCheck(data){
		if(data.result=="NO"){
			$("#joinId").text("");
			$("#joinId").focus();
			
		} else {
			$("#joinPassword").focus();
			
		}
	}
});

//member join --------------------------------------------------------

//<<<<<<< HEAD
//
//
//$('#reset').on('click',function(){
//	$('#idCheckDiv').text("");
//});
//
//	$("#joinMember").on('click',function(){
//		var formData = $('join').serialize();
//		
//		
//		alert("아이디 :"+joinId+", 비밀번호 :"+joinPassword+", 닉네임 :"+nickName+", 실제이름 :"+userName+", 이메일 :"+eMail);
//		
//		$.ajax({
//			url:"/join.memeber",
//			dataType:"text",
//			data:formData,
//=======
//$(function(){
//	$("#joinMember").on('click',function(){
//		var joinId = $("#joinId").text();
//		var joinPassword = $("#joinPassword").text();
//		var nickName = $("#nickName").text();
//		var userName = $("#userName").text();
//		var eMail = $("#eMail").text();
//		
//		
//		alert("아이디 :"+joinId+", 비밀번호 :"+joinPassword+", 닉네임 :"+nickName+", 실제이름 :"+userName+", 이메일 :"+eMail);
//		
//		$.ajax({
//			url:"/join.join",
//			type : "POST",
//			data:{	
//				joinId: joinId,
//				joinPassword: joinPassword,
//				nickName: nickName,
//				userName: userName,
//				eMail: eMail
//			},
//>>>>>>> refs/remotes/origin/master
//			success:function(data){
//				alert("회원가입 성공!");
//				document.location.href="/";
//			}
//		
//		});
//	});
//<<<<<<< HEAD
//=======
//});
//>>>>>>> refs/remotes/origin/master
