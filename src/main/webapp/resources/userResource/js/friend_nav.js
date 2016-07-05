//Closes the sidebar menu

$(document).ready(function(){
	$("#menu-close").on('click',function(e) {
		e.preventDefault();
		$("#sidebar-wrapper").toggleClass("active");
	});

//	Opens the sidebar menu
	$("#friend_nav").on('click',function(e) {

		e.preventDefault();
		$("#sidebar-wrapper").toggleClass("active");
	});
	function closeMenu(){
		$("#menu-close").click();
	}

});