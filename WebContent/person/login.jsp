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
</head>
<body>
	 <!-- 버튼 눌렀을 때 데이터값 일치하면 로그인되서 main으로 넘어가고 아니면 안됨 -->
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<form action="/keep/person?cmd=loginProc" class="login100-form validate-form" method="POST">
					<span class="login100-form-title p-b-33">
						Account Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<!-- 로그인 -->
					<div class="container-login100-form-btn m-t-20">
						<button class="login100-form-btn">
							로그인
						</button>
					</div>

					<div class="text-center p-t-45 p-b-4">
						<span class="txt1">
							아이디 기억하기
						</span>

						<a href="#" class="txt2 hov1">
							Username / Password?
						</a>
					</div>

					<!-- 회원가입  -->
					<div class="text-center">
						<span class="txt1">
							Create an account?
						</span>

						<a href="/keep/person?cmd=join" class="txt2 hov1">
							Sign up
						</a>
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