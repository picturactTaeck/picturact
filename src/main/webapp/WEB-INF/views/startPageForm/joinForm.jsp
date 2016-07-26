
<section id="joinForm" style="display: none">

	<form id="join" method="post" action="/join.member" >
		
		<div class="loginDiv">
			<div>
				<font size="4">Join</font>
			</div>
			<div>
				<font size="2">Fill in the form below to get instant access:</font>
			</div>
			<div class="form-group">
				<div class="idCheckDiv" id="idConfirm"></div>
				<input class="form-control" name="userId" id="joinId" type="text" placeholder="Input your ID...">
				
			</div>

			<div class="form-group">
				<input class="form-control" type="password"  name="password" id="userPassword"  placeholder="Input your Password...">
			</div>
<!-- 			<div> -->
<!-- 				<input type="button" id="idCheck" class="btn btn-default btn-sm" value="confirm" > -->
<!-- 			</div> -->

				<div class="form-group">
			<!-- User nickName -->
				<input class="form-control" type="text"  placeholder="Input your Nickname..." id="nickName"  name="nickname">
			</div>

			<div class="form-group">
				<!-- USERNAME -->
				<input class="form-control" type="text" placeholder="Input your Name..." id="userName"  name="username">
				
			</div>

			<div class="form-group">
				<!-- E-MAIL -->
				<input class="form-control" type="email"  placeholder="E-mail..." id="eMail"  name="email">
				
			</div>
			<div>
<!-- 			 <input type="button" class="btn btn-default" onclick="join()" value="Ajax Join" >  -->
<!--              <button type="submit" class="btn btn-default" >Join</button>  -->
<!--              <input type="button" class="btn btn-link-2 scroll-link" onclick="location.href='#page-top'" value="Cancel"> -->
             <input type="button" id="submitJoin" class="btn btn-default btn-sm" value="Join us">
             <button type="reset" id="resetJoin"class="btn btn-default btn-sm" >cancle</button>
<!--              <input type="button" class="btn btn-link-2 scroll-link" onclick="location.href='#page-top'" value="Cancel"> -->
                       
			</div>

		</div>
	</form>
</section>




