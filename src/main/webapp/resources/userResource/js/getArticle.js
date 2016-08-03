		$(document).ready(function(){
			getArticle();
			$('#viewMoreArticle').on('click',function(){
				getArticle();
			});
			
		
		});
			
			function getArticle(){
				var lastArticleNum=0;
				if($('#articlesArea :eq(0)').length==0){
					lastArticleNum=0;
				}else{
					lastArticleNum=$('#viewMoreArticle').attr('lastArticleNum');
				}
				var url = $('#articlesArea').attr('getUrl')+".article";

				$.ajax({
					url:url,
				 	data:{
				 		lastArticleNum:lastArticleNum,
				 		whosPage:$('#articlesArea').attr('whosPage')
				 		},
				 	
				 	dataType:"json",
					success: function (data){
						if(data.length==0){
							alert('There is no information any more');
							return false;
						}
						
						
						
						
						var source=$("#makeMainArticlesView").html();


						

// 						if count of files is one it return true
// 						it help when the picture appear
						Handlebars.registerHelper('isOne', function(howManyFiles, options) {
			  				if(howManyFiles==1){
			  					return options.fn(this);
			  				}else{
			  					return options.inverse(this);
			  				}

						});
// 						this helper will return true when the number diveded to 3 remainder is 0
//						then the row's div is appered
						Handlebars.registerHelper('divideRowFirst', function(key, options) {
			  				if(key%3==0){
			  					return options.fn(this);
			  				}else{
			  					return options.inverse(this);
			  				}

						});
						
// 						this helper will return true when the number diveded to 3 remainder is 2
//						then the row's end div is appered
						Handlebars.registerHelper('divideRowLast', function(key, options) {
			  				if(key%3==2){
			  					return options.fn(this);
			  				}else{
			  					return options.inverse(this);
			  				}

						});
						
//						it return true when location exist
						Handlebars.registerHelper('locationExist', function(location, options) {
			  				if(location!=null){
			  					return options.fn(this);
			  				}else{
			  					return options.inverse(this);
			  				}

						});
						

						Handlebars.registerHelper('isMine', function(userId, options) {
			  				if(userId==$('#articlesArea').attr('userId')){
			  					return options.fn(this);
			  				}else{
			  					return options.inverse(this);
			  				}

						});
						
						var template = Handlebars.compile(source);


						$('#articlesArea').append(template(data));	
						$('#viewMoreArticle').attr('lastArticleNum',data[data.length-1].articleNum);


					},
					error: function(a,b,c){
						alert('실패 a : '+ a + " b : " + b + " c : " + c);
					}
				});
				
			}
			
			$(document).on('click','.viewArticleModal',function(){

				$('#viewArticleComment').attr('article',$(this).attr('articleNum'));
				$.ajax({
					url:'getOne.article',
				 	data:{
				 		articleNum:$(this).attr('articleNum')
				 		},
				 	
				 	dataType:"json",
					success: function (data){
						var source=$("#makeModalArticle").html();


// 						if count of files is one it return true
// 						it help when the picture appear
						Handlebars.registerHelper('isOne', function(howManyFiles, options) {
			  				if(howManyFiles==1){
			  					return options.fn(this);
			  				}else{
			  					return options.inverse(this);
			  				}

						});
						
						var template = Handlebars.compile(source);


						$('#articleModalImg').html(template(data));	
						
						getComment($('#viewArticleComment'));
						
					}
				});
				
			});
			
			
			