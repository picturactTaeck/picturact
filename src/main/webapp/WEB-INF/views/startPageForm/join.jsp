<section>
                   	<div class="container-fluid" >
                   		<div class="form-top-left">
                   			<font size="6">Join</font>
                       		<p>Fill in the form below to get instant access:</p>
                   		</div>
                   	
                   		<div class="form-top-right">
                  <form action="/join.join" method="post">
                   <input type="hidden" name="joinId" value="" />
                   <div class="form-group">
                   <div class="row">
                   	
                   <!-- ID -->	
                    	<div class="col-sm-8">
<!--                     		<div style="border: solid 1px rgb(130,130,130);"  contenteditable="true"  placeholder="Input your ID..." id="joinId"></div> -->
                    		<div class="form-control"  contenteditable="true"  placeholder="Input your ID..." id="joinId"></div>
                    	</div>
							 <div class="col-sm-4">
							 	<div class="form-control" placeholder="ID Check" id="idConfirm" style="text-align:center;"></div>
							 </div>
                   	
                     </div>   
                      </div>
                <div class="row">
                		<div class="col-sm-12">
                        <div class="form-group">
                        	<!-- PASSWORD -->
                        	<div contenteditable="true" placeholder="Input your Password..." class="form-control" id="joinPassword"></div>
                        </div>
                        
                        <div class="form-group">
                        	<!-- User nickName -->
                        	<div contenteditable="true" placeholder="Input your Nickname..." class="form-control" id="nickName"></div>
                        </div>
                        
                        <div class="form-group">
                        	<!-- USERNAME -->
                        	<div contenteditable="true" placeholder="Input your Name..." class="form-control" id="userName"></div>
                        </div>			                        
                        
                        <div class="form-group">
                        	<!-- E-MAIL -->
                        	<div contenteditable="true" placeholder="E-mail..." class="form-control" id="eMail"></div>
                        </div>
                  </div> 
                   </div>
<!-- 			     div로 변경 -->
                      <span style="float:right">
<!-- 				                        <input type="button" class="btn btn-default" value="Join" /> -->
                       <input type="button" class="btn btn-default" onclick="join()" value="Ajax Join" >
<!--                        <button type="submit" class="btn btn-default" >Join</button> -->
                       <input type="button" class="btn btn-link-2 scroll-link" onclick="location.href='#page-top'" value="Cancel">
                       
                      </span>
                  </form>
                 </div>
                  </div>
</section>