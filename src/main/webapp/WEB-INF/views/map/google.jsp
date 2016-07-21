<section>
	<div>   
	    <input id="address" type="text" value="Sydney, NSW" onKeypress="javascript:if(event.keyCode==13){codeAddress();}">   
	    <input type="button" value="Geocode" onclick="codeAddress();">   
	</div>   
	 <div id="searchLocation"></div>
	 
	<div id="map_canvas" style="height:50%;top:20px" ></div>   
</section>