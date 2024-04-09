<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sidebar With Bootstrap</title>
<link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" href="assets/css/styleAdmin.css">
</head>

<body>
	<div class="wrapper">
		<aside id="sidebar">
			<div class="d-flex">
				<button class="toggle-btn" type="button">
					<i class="lni lni-grid-alt"></i>
				</button>
				<div class="sidebar-logo">
					<a href="#" class="text-decoration-none">SineTDT</a>
				</div>
			</div>
			<ul class="sidebar-nav">
				<li class="sidebar-item"><a href="indexAdmin" class="sidebar-link text-decoration-none"> <i class="lni lni-user"></i> <span>Trang chủ</span>
				</a></li>
				<li class="sidebar-item"><a href="addProduct" class="sidebar-link text-decoration-none"> <i class="lni lni-agenda"></i> <span>Sản phẩm</span>
				</a></li>
								<li class="sidebar-item"><a href="infoUser" class="sidebar-link text-decoration-none"> <i class="lni lni-agenda"></i> <span>Khách hàng</span>
				</a></li>
				<li class="sidebar-item"><a href="#" class="sidebar-link collapsed has-dropdown text-decoration-none" data-bs-toggle="collapse" data-bs-target="#auth" aria-expanded="false" aria-controls="auth"> <i
						class="lni lni-protection"></i> <span>Auth</span>
				</a>
					<ul id="auth" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
						<li class="sidebar-item"><a href="#" class="sidebar-link text-decoration-none">Login</a></li>
						<li class="sidebar-item"><a href="#" class="sidebar-link text-decoration-none">Register</a></li>
					</ul></li>
				<li class="sidebar-item"><a href="#" class="sidebar-link collapsed has-dropdown text-decoration-none" data-bs-toggle="collapse" data-bs-target="#multi" aria-expanded="false" aria-controls="multi"> <i
						class="lni lni-layout "></i> <span>Multi Level</span>
				</a>
					<ul id="multi" class="sidebar-dropdown list-unstyled collapse" data-bs-parent="#sidebar">
						<li class="sidebar-item"><a href="#" class="sidebar-link collapsed text-decoration-none" data-bs-toggle="collapse" data-bs-target="#multi-two" aria-expanded="false" aria-controls="multi-two"> Two Links </a>
							<ul id="multi-two" class="sidebar-dropdown list-unstyled collapse">
								<li class="sidebar-item"><a href="#" class="sidebar-link text-decoration-none">Link 1</a></li>
								<li class="sidebar-item"><a href="#" class="sidebar-link text-decoration-none">Link 2</a></li>
							</ul></li>
					</ul></li>
				<li class="sidebar-item"><a href="#" class="sidebar-link text-decoration-none"> <i class="lni lni-popup"></i> <span>Notification</span>
				</a></li>
				<li class="sidebar-item"><a href="#" class="sidebar-link text-decoration-none"> <i class="lni lni-cog"></i> <span>Setting</span>
				</a></li>
			</ul>
			<div class="sidebar-footer">
				<a href="#" class="sidebar-link text-decoration-none"> <i class="lni lni-exit"></i> <span>Logout</span>
				</a>
			</div>
		</aside>
		<div style="width: 100%; height: 100%">
		<jsp:include page="${contentPageAdmin}" />
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="assets/js/scriptAdmin.js"></script>
</body>

</html>