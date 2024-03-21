<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type=""><%@include file="/assets/css/login_signup.css"%></style>
</head>
<body>
	<section class="forms-section">
		<h1 class="section-title">Login & Signup Forms</h1>
		<div class="forms">
			<div class="form-wrapper is-active">
				<button type="button" class="switcher switcher-login">
					Login <span class="underline"></span>
				</button>
				<form class="form form-login">
					<fieldset>
						<legend>Please, enter your email and password for login.</legend>
						<div class="input-block">
							<label for="login-email">E-mail</label> <input id="login-email"
								type="email" required>
						</div>
						<div class="input-block">
							<label for="login-password">Password</label> <input
								id="login-password" type="password" required>
						</div>
					</fieldset>
					<button type="submit" class="btn-login"><a href="test" style="text-decoration: none">Login</a></button>
				</form>
			</div>
			<div class="form-wrapper">
				<button type="button" class="switcher switcher-signup">
					Sign Up <span class="underline"></span>
				</button>
				<form class="form form-signup">
					<fieldset>
						<legend>Please, enter your email, password and password
							confirmation for sign up.</legend>
						<div class="input-block">
							<label for="signup-username">Username</label> <input
								id="signup-email" type="text" required>
						</div>
						<div class="input-block">
							<label for="signup-email">E-mail</label> <input id="signup-email"
								type="email" required>
						</div>
						<div class="input-block">
							<label for="signup-password">Password</label> <input
								id="signup-password" type="password" required>
						</div>
					</fieldset>
					<button type="submit" class="btn-signup">Sign Up</button>
				</form>
			</div>
		</div>
	</section>
	<script type=""><%@include file="/assets/js/login_signup.js"%></script>
</body>
</html>