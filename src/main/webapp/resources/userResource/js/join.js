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
	$("#joinId").blur(function(){
		var joinIdImpl = $("#joinId").text();
 		alert(joinIdImpl);
		if(joinIdImpl != ""){
		
			$.ajax({
				url:"/joinIdCheck.join",
				data:{	
					joinId:joinIdImpl
				},
				success:function(data){
// 					alert("data,"+data);
					idCheck(data);
					var html;
					if(data.result=="OK"){					
						html="<font face='Impact' align='center'>OK</font>";
						$("#idConfirm").html(html).css("color","blue");
					}else{
						html="<font face='Impact' align='center'>NO</font>";
						$("#idConfirm").html(html).css("color","red");
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

function join(){
	var joinId = $("#joinId").text();
	var joinPassword = $("#joinPassword").text();
	var nickName = $("#nickName").text();
	var userName = $("#userName").text();
	var eMail = $("#eMail").text();
	
	
	alert("아이디 :"+joinId+", 비밀번호 :"+joinPassword+", 닉네임 :"+nickName+", 실제이름 :"+userName+", 이메일 :"+eMail);
	
	$.ajax({
		url:"/join.join",
		type : "POST",
		data:{	
			joinId: joinId,
			joinPassword: joinPassword,
			nickName: nickName,
			userName: userName,
			eMail: eMail
		},
		success:function(data){
			alert("회원가입 성공!");
			document.location.href="/";
		}
	
	});
};