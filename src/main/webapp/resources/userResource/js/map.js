
// $(document).ready(function() { initialize() });
// window.onload=initialize();
// window.onload = initialize;


$(document).ready(function(){
	var geocoder;
	var map;
	var marker;
	var lat, lng;
	$('#loadMapModal').on('click',function(){
		initialize();
	});


function initialize() {
	var myLoc = getLocation();
	if (myLoc == null){
		alert("myLoc : "+myLoc);
		return false;
	}

	myLocation(myLoc);

}

function getLocation() {
	if (navigator.geolocation) { // geolocation 객체지원여부
		$("#searchLocation").html("<b>위치정보 지원 함</b>");
		return navigator.geolocation;
	} else {
		$("#searchLocation").html("<b>위치정보 지원 안함</b>");
	}
	return null;
}

function myLocation(myLoc) {
	myLoc.getCurrentPosition(function(position) {// getCurrentPosition() 최초
													// 위치를 얻음
		lat = position.coords.latitude; // 위도를 얻음
		alert("lat :" + lat);
		lng = position.coords.longitude; // 경도를 얻음
		alert("lng :" + lng);

		geocoder = new google.maps.Geocoder();
		var latlng = new google.maps.LatLng(lat, lng);
		var myOptions = {
			zoom : 18,
			center : latlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		map = new google.maps.Map($("#map_canvas"),myOptions);
		addMark(lat, lng, map);
		
	});
}

$("#getClickPosition").on("click",function codeAddress() {
	var address = $("#address").value();
	alert("address :" + address);

	// r.innerHTML = '';
	$("#searchLocation").text('');

	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.location);
			addMark(results[0].geometry.location.lat(),
					results[0].geometry.location.lng());

			for ( var i in results) {
				var lat_location = results[i].geometry.location.lat();
				var lng_location = results[i].geometry.location.lng();
				var appendTag = "<a href='#' class='testMap' lat='"
						+ lat_location + "' lng='" + lng_location + "'>"
						+ results[i].formatted_address + "<a><br/>"

				alert("위치 있는 위도 :" + results[i].geometry.location.lat()
						+ ", 위치 있는 경도 :" + results[i].geometry.location.lng());
				alert("bbb:" + results[i].formatted_address);
				$("#searchLocation").append(appendTag);
			}
		} else {
			alert("인식되지 않는 검색어 :" + address);
			alert("위치없는 위도 :" + lat + ", 위치없는 경도 :" + lng);

			var appendTag = "<a href='#' class='testMap' lat='" + lat
					+ "' lng='" + lng + "'>" + address + "<a><br/>"
			$("#searchLocation").append(appendTag);
		}

	});
});

$(document).on("click", ".testMap", function(event) {
	event.preventDefault();
	alert("click");
	loadMap($(this).attr("lat"), $(this).attr("lng"), $(this).text());

});

function loadMap(lat, lng, location1) {
	if (typeof marker != 'undefined') {
		marker.setMap(null);
	}

	marker = new google.maps.Marker({
		map : map,
		position : new google.maps.LatLng(lat, lng)
	});
	alert("lat :" + lat + ", lng :" + lng + ", yourLocation :" + location1);
	$("#yourLocation").html(
			"<a href='#' class='search' lat='" + lat + "' lng='" + lng + "'>"
					+ location1 + "</a>");
	$("#myModal .close").click();
}

$(document).on(
		"click",
		".search",
		function(event) {
			event.preventDefault();
			alert("아냐아냐 DB에서 뽑아야 함다!!!!!!!!지도 위치 불러와야 함 (현재 위치):"
					+ $(this).text());
			alert("지도 위치 불러와야 함 (현재 좌표): lat ->" + $(this).attr("lat")
					+ ", lng :" + $(this).attr("lng"));

		});

function addMark(lat, lng,map) {
	if (typeof marker != 'undefined') {
		marker.setMap(null);
	}

	marker = new google.maps.Marker({
		map : map,
		position : new google.maps.LatLng(lat, lng)
	});
}
});
//function location1(lat, lng, location2) {
//
//	alert("lat :" + lat + ", lng :" + lng + ", yourLocation :" + location2 + "  들어오나");
//	$("#yourLocation").html("<div id='location' lat='+lat+' lng='+lag+'>"+location2+"</div>");
//	$("#myModal .close").click();
//}