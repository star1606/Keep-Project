<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<title>Login V19</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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



<style>

.wrap-input100, .input100 {

	height: 50px;
}


</style>



</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form action="/keep/person?cmd=joinProc" class="login100-form validate-form" method="POST"
					oninput='passConfirm.setCustomValidity(passConfirm.value != password.value ? "Passwords do not match." : "")'>
					<span class="login100-form-title p-b-33">
						Account Join
					</span>
					
					Email:
					<div class="wrap-input100 validate-input " data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div><br/>
					
					Name:
					<div class="wrap-input100 validate-input" data-validate = "Valid name is required">
						<input class="input100" type="text" name="personName" placeholder="">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div><br/>
					
					Password:
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password" placeholder="">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div><br/>
					Password: 확인
					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="passConfirm" placeholder="">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div><br/>
					

					<div class="container-login100-form-btn m-t-40">
						<button class="login100-form-btn">
							Sign up
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




</body>
</html>