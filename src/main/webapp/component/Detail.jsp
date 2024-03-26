<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style type="text/css">
.body-detail {
	margin-top: 100px;
}
<%@include file="/assets/css/detail.css"%>
</style>

</head>

<body>
	<!-- content -->
	<section class="py-5">
		<div class="container body-detail">
			<div class="row gx-5">
				<aside class="col-lg-6">
					<div class="border rounded-4 mb-3 d-flex justify-content-center">
						<a data-fslightbox="mygalley" class="rounded-4" target="_blank" data-type="image" href="#"> <img style="max-width: 100%; max-height: 100vh; margin: auto;" class="rounded-4 fit"
							src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" />
						</a>
					</div>
					<div class="d-flex justify-content-center mb-3">
						<a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="#" class="item-thumb"> <img width="60" height="60" class="rounded-2"
							src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" />
						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="#" class="item-thumb"> <img width="60" height="60" class="rounded-2"
							src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" />
						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="#" class="item-thumb"> <img width="60" height="60" class="rounded-2"
							src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" />
						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="#" class="item-thumb"> <img width="60" height="60" class="rounded-2"
							src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" />
						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" target="_blank" data-type="image" href="#" class="item-thumb"> <img width="60" height="60" class="rounded-2"
							src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" />
						</a>
					</div>
					<!-- thumbs-wrap.// -->
					<!-- gallery-wrap .end// -->
				</aside>
				<main class="col-lg-6">
					<div class="ps-lg-3 fs-3">
						<h4 class="title text-dark fs-1">Áo thun nam thời trang hàn quốc</h4>
						<div class="d-flex flex-row my-3 fs-3">
							<div class="text-warning mb-1 me-2">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fas fa-star-half-alt"></i> <span class="ms-1"> 4.5 </span>
							</div>
							<span class="text-muted"><i class="fas fa-shopping-basket fa-xl mx-1"></i>154 sản phẩm</span> <span class="text-success ms-2">sẵn hàng</span>
						</div>

						<div class="mb-3 ">
							<span class="h1">299.000 ₫</span> <span class="text-muted">/áo</span>
						</div>

						<p class="">Áo thun là một loại áo đơn giản và phổ biến, thường làm từ vải cotton mềm mại và thoáng khí. Kiểu dáng đa dạng, từ cổ tròn đến cổ bẻ, mang lại sự linh hoạt cho việc mix đồ. Áo
							thun thường có các họa tiết đơn giản như sọc hoặc họa tiết in, hoặc đơn giản chỉ là màu sắc trơn. Đây là một trang phục phổ biến trong mọi dịp, từ hàng ngày đến dạo phố hoặc thể thao, mang lại
							sự thoải mái và phong cách cho người mặc.</p>

						<div class="row">
							<dt class="col-3">Loại:</dt>
							<dd class="col-9">trang phục</dd>

							<dt class="col-3">Màu</dt>
							<dd class="col-9">Đen</dd>

							<dt class="col-3">Chất liệu</dt>
							<dd class="col-9">Cotton</dd>

							<dt class="col-3">Nhãn hiệu</dt>
							<dd class="col-9">Kappa</dd>
						</div>

						<hr />

						<div class="row mb-4">
							<div class="col-md-4 col-6">
								<label class="mb-2">Kích cỡ</label> <select class="form-select border border-secondary fs-3" style="height: 35px;">
									<option class="fs-3">S</option>
									<option class="fs-3">M</option>
									<option class="fs-3">L</option>
								</select>
							</div>
							<!-- col.// -->
							<div class="col-md-4 col-6 mb-3">
								<label class="mb-2 d-block">Số lượng</label>
								<div class="input-group mb-3" style="width: 170px;">
									<button class="btn btn-white border border-secondary px-3" type="button" id="button-addon1" data-mdb-ripple-color="dark">
										<i class="fas fa-minus"></i>
									</button>
									<input type="text" class="form-control text-center border border-secondary fs-3" value="1" aria-label="Example text with button addon" aria-describedby="button-addon1" />
									<button class="btn btn-white border border-secondary px-3" type="button" id="button-addon2" data-mdb-ripple-color="dark">
										<i class="fas fa-plus"></i>
									</button>
								</div>
							</div>
						</div>
						<button class="button">Mua ngay</button>
						<button class="button-addtocart">
							<i class="fa fa-shopping-basket"></i>Thêm vào giỏ hàng
						</button>
						<button class="button-addtocart">
							<i class="fa fa-heart"></i>Thêm vào yêu thích
						</button>
					</div>
				</main>
			</div>
		</div>
	</section>
	<!-- content -->

	<section class="bg-light border-top py-4">
		<div class="container">
			<div class="row gx-4">
				<div class="col-lg-8 mb-4">
					<div class="border rounded-2 px-3 py-2 bg-white">
						<!-- Pills content -->
						<ul class="nav nav-pills nav-fill" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active fs-4" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">Mô
									tả</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link fs-4" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">Thông
									tin bảo hành</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link fs-4" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">Thông
									tin vận chuyển</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link fs-4" id="disabled-tab" data-bs-toggle="tab" data-bs-target="#disabled-tab-pane" type="button" role="tab" aria-controls=disabled-tab-pane " aria-selected="false">Hồ
									sơ người bán</button>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
								<p>SmartPen Pro là một công cụ độc đáo kết hợp giữa công nghệ và thiết kế tinh tế, mang lại trải nghiệm viết tuyệt vời cho người dùng. Với khả năng kết nối Bluetooth và tích hợp công nghệ
									nhận dạng chữ viết tự nhiên, SmartPen Pro giúp bạn ghi chép mọi ý tưởng, ghi nhớ thông tin một cách dễ dàng. Với vẻ ngoài sang trọng và trọng lượng nhẹ, SmartPen Pro là sự lựa chọn hoàn hảo
									cho cả việc ghi chép hàng ngày và các nhu cầu học tập, làm việc chuyên sâu. Bạn có thể sử dụng nó để viết trên giấy thông thường, và mọi ghi chú sẽ tự động được đồng bộ hóa với ứng dụng di
									động thông minh qua kết nối Bluetooth. Với khả năng tương thích đa nền tảng, SmartPen Pro có thể tích hợp dễ dàng với các thiết bị di động như điện thoại thông minh và máy tính bảng, giúp bạn
									truy cập và tổ chức ghi chú một cách thuận tiện từ mọi nơi. Ngoài ra, tính năng ghi âm tích hợp cũng là điểm nổi bật của SmartPen Pro, cho phép bạn ghi lại các cuộc họp, bài giảng hay cuộc
									trò chuyện một cách dễ dàng và rõ ràng. Với SmartPen Pro, bạn không chỉ sở hữu một cây bút viết thông thường mà còn là một công cụ đa năng, hỗ trợ tối ưu cho việc tổ chức công việc và nâng
									cao hiệu suất làm việc.</p>
							</div>
							<div class="tab-pane" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
								<p>SmartPen Pro là một công cụ độc đáo kết hợp giữa công nghệ và thiết kế tinh tế, mang lại trải nghiệm viết tuyệt vời cho người dùng. Với khả năng kết nối Bluetooth và tích hợp công nghệ
									nhận dạng chữ viết tự nhiên, SmartPen Pro giúp bạn ghi chép mọi ý tưởng, ghi nhớ thông tin một cách dễ dàng. Với vẻ ngoài sang trọng và trọng lượng nhẹ, SmartPen Pro là sự lựa chọn hoàn hảo
									cho cả việc ghi chép hàng ngày và các nhu cầu học tập, làm việc chuyên sâu. Bạn có thể sử dụng nó để viết trên giấy thông thường, và mọi ghi chú sẽ tự động được đồng bộ hóa với ứng dụng di
									động thông minh qua kết nối Bluetooth. Với khả năng tương thích đa nền tảng, SmartPen Pro có thể tích hợp dễ dàng với các thiết bị di động như điện thoại thông minh và máy tính bảng, giúp bạn
									truy cập và tổ chức ghi chú một cách thuận tiện từ mọi nơi. Ngoài ra, tính năng ghi âm tích hợp cũng là điểm nổi bật của SmartPen Pro, cho phép bạn ghi lại các cuộc họp, bài giảng hay cuộc
									trò chuyện một cách dễ dàng và rõ ràng. Với SmartPen Pro, bạn không chỉ sở hữu một cây bút viết thông thường mà còn là một công cụ đa năng, hỗ trợ tối ưu cho việc tổ chức công việc và nâng
									cao hiệu suất làm</p>
							</div>
							<div class="tab-pane" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
								<p>SmartPen Pro là một công cụ độc đáo kết hợp giữa công nghệ và thiết kế tinh tế, mang lại trải nghiệm viết tuyệt vời cho người dùng. Với khả năng kết nối Bluetooth và tích hợp công nghệ
									nhận dạng chữ viết tự nhiên, SmartPen Pro giúp bạn ghi chép mọi ý tưởng, ghi nhớ thông tin một cách dễ dàng. Với vẻ ngoài sang trọng và trọng lượng nhẹ, SmartPen Pro là sự lựa chọn hoàn hảo
									cho cả việc ghi chép hàng ngày và các nhu cầu học tập, làm việc chuyên sâu. Bạn có thể sử dụng nó để viết trên giấy thông thường, và mọi ghi chú sẽ tự động được đồng bộ hóa với ứng dụng di
									động thông minh qua kết nối Bluetooth. Với khả năng tương thích đa nền tảng, SmartPen Pro có thể tích hợp dễ dàng với các thiết bị di động như điện thoại thông minh và máy tính bảng, giúp bạn
									truy cập và tổ chức ghi chú một cách thuận tiện từ mọi nơi. Ngoài ra, tính năng ghi âm tích hợp cũng là điểm nổi bật của SmartPen Pro, cho phép bạn ghi lại các cuộc họp, bài giảng hay cuộc
									trò chuyện một cách dễ dàng và rõ ràng. Với SmartPen Pro, bạn không chỉ sở hữu một cây bút viết thông thường mà còn là một công cụ đa năng, hỗ trợ tối ưu cho việc tổ chức công việc và nâng
									cao hiệu suất</p>
							</div>
							<div class="tab-pane" id="disabled-tab-pane" role="tabpanel" aria-labelledby="disabled-tab" tabindex="0">
								<p>SmartPen Pro là một công cụ độc đáo kết hợp giữa công nghệ và thiết kế tinh tế, mang lại trải nghiệm viết tuyệt vời cho người dùng. Với khả năng kết nối Bluetooth và tích hợp công nghệ
									nhận dạng chữ viết tự nhiên, SmartPen Pro giúp bạn ghi chép mọi ý tưởng, ghi nhớ thông tin một cách dễ dàng. Với vẻ ngoài sang trọng và trọng lượng nhẹ, SmartPen Pro là sự lựa chọn hoàn hảo
									cho cả việc ghi chép hàng ngày và các nhu cầu học tập, làm việc chuyên sâu. Bạn có thể sử dụng nó để viết trên giấy thông thường, và mọi ghi chú sẽ tự động được đồng bộ hóa với ứng dụng di
									động thông minh qua kết nối Bluetooth. Với khả năng tương thích đa nền tảng, SmartPen Pro có thể tích hợp dễ dàng với các thiết bị di động như điện thoại thông minh và máy tính bảng, giúp bạn
									truy cập và tổ chức ghi chú một cách thuận tiện từ mọi nơi. Ngoài ra, tính năng ghi âm tích hợp cũng là điểm nổi bật của SmartPen Pro, cho phép bạn ghi lại các cuộc họp, bài giảng hay cuộc
									trò chuyện một cách dễ dàng và rõ ràng. Với SmartPen Pro, bạn không chỉ sở hữu một cây bút viết thông thường mà còn là một công cụ đa năng, hỗ trợ tối ưu cho việc tổ chức công việc và nâng
									cao hiệu</p>
							</div>
						</div>
						<!-- Pills content -->
					</div>
				</div>
				<div class="col-lg-4">
					<div class="px-0 border rounded-2 shadow-0">
						<div class="card fs-3">
							<div class="card-body">
								<h5 class="card-title fs-1">Sản phẩm tương tự</h5>
								<div class="d-flex mb-3">
									<a href="#" class="me-3"> <img src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> Áo Thun Nam Thời Trang Hàn Quốc
										</a> <strong class="text-dark"> 299.000 ₫</strong>
									</div>
								</div>

								<div class="d-flex mb-3">
									<a href="#" class="me-3"> <img src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1">Áo Thun Nam Thời Trang Hàn Quốc
										</a> <strong class="text-dark"> 299.000 ₫</strong>
									</div>
								</div>

								<div class="d-flex mb-3">
									<a href="#" class="me-3"> <img src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> Áo Thun Nam Thời Trang Hàn Quốc</a> <strong class="text-dark"> 299.000 ₫</strong>
									</div>
								</div>

								<div class="d-flex">
									<a href="#" class="me-3"> <img src="https://pos.nvncdn.com/e55206-92814/ps/20230704_QMkdr8j7Do.jpeg" style="min-width: 96px; height: 96px;" class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> Áo Thun Nam Thời Trang Hàn Quốc</a> <strong class="text-dark"> 299.000 ₫</strong>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Custom scripts -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	<script type="text/javascript" src="assets/js/Detail.js"></script>

</body>
</html>