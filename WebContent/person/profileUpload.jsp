<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 


<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/keep/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/keep/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/keep/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/keep/login/css/util.css">
	<link rel="stylesheet" type="text/css" href="/keep/login/css/main.css">
<!--===============================================================================================-->

<%@ include file = "../include/nav2.jsp" %> 

<style>


.wrap-input100, .input100 { 

   height: 55px; 
 } 

.wrap-login100 { 
     width: 331px; 
     background: #fff; 
    border-radius: 10px; 
     overflow: hidden; 
     box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1); 
     -moz-box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1); 
     -webkit-box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1); 
     -o-box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1); 
     -ms-box-shadow: 0 3px 20px 0px rgba(0, 0, 0, 0.1); 

 } 

</style>



</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form action="/keep/person?cmd=profileUploadProc"
				class="login100-form validate-form"
				style="text-align: center;" method="POST" enctype="multipart/form-data">
					<span class="login100-form-title p-b-33">
						Profile Upload
					</span>
			
				
					<img id="img__wrap" style="text-align: center; margin-bottom: 25px; border-radius: 50px;" onerror="this.src='/keep/static/image/userProfile.png'" src ="${sessionScope.principal.userProfile }" width="100px" height ="100px"/>
					
					<div class = "login100 bg-light" style="text-align: left;">
						<input type = "file" name="userProfile" id="img__preview" />					
					</div>		
					
					<input type ="hidden" name="id" value="${sessionScope.principal.id}"/>
							<div class="container-login100-form-btn m-t-40">
								<button class="login100-form-btn">
									Upload
								</button>
							</div>
						
				</form>
			</div>
		</div>
	</div>
	

	
<!--===============================================================================================-->
	<script src="/keep/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/keep/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/keep/login/vendor/bootstrap/js/popper.js"></script>
	<script src="/keep/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/keep/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/keep/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="/keep/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/keep/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/keep/login/js/main.js"></script>


<script src="/keep/js/imgPreview.js"></script>

</body>
</html>