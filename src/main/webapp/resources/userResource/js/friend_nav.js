// Closes the sidebar menu
$("#menu-close").click(function(e) {
	e.preventDefault();
	$("#sidebar-wrapper").toggleClass("active");
});

// Opens the sidebar menu
$("#friend_nav").click(function(e) {
	e.preventDefault();
	$("#sidebar-wrapper").toggleClass("active");
});
function closeMenu(){
	$("#menu-close").click();
}