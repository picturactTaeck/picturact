		

		$(document).ready(function(){
			
			getArticle();
			
			function getArticle(){
				$.ajax({
					url:"getMain.article",
				 	data:{
				 		lastArticleNum:'0'
				 	},
				 	dataType:"json",
					success: function (data){
						
						var source=$("#makeMainArticlesView").html();


						var template = Handlebars.compile(source);

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
						
						
						var html = "";


							$('#articlesArea').append(template(data));	


					},
					error: function(a,b,c){
						alert('실패 a : '+ a + " b : " + b + " c : " + c);
					}
				});
				
			}
			
			
		})