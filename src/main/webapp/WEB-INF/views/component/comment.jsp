



<script id="makeComment" type="text/x-handlebars-template">
	<div class="container commentDiv">
	
		<div class="readComment">

	{{#each comment}}
		
			<div class="row ">
				<div class="commentUserDiv"><a href="/{{userId}}">{{userId}}</a></div>
				<div class="commentContentDiv">{{commentContent}}</div>
			</div>
			
		
	{{/each}}
		</div>
	

  		<div class="writeCommentDiv" >
    	<input type="text" id="writeCommentContent{{articleNum}}" >
    		<span class="input-group-btn">
    		<input type="button" article="{{articleNum}}" class="writeComment btn btn-default btn-xs" value="comment" user="{{commentId}}">
    	</span>
  	
		</div>
	</div>


</script>






