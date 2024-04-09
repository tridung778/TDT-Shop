<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>
	<div class="container mt-3">
		<div class="d-flex flex-column aligh-items-center justify-content-center">
			<h1>Thêm sản phẩm</h1>
			<div class="row">
				<form class="col-4">
					<div class="mb-3">
						<label class="form-label">Mã sản phẩm</label> <input type="text" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Tên sản phẩm</label> <input type="text" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Số lượng</label> <input type="text" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Giá gốc</label> <input type="text" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Giá hiện tại</label> <input type="text" class="form-control">
					</div>
					<div class="mb-3">
						<label class="form-label">Mô tả sản phẩm</label>
						<textarea class="form-control" rows="3" aria-label="With textarea"></textarea>
					</div>
					<a class="btn btn-secondary ms-3">Mới</a> <a class="btn btn-success ms-3">Thêm</a> <a class="btn btn-danger ms-3">Xóa</a> <a class="btn btn-warning ms-3">Sửa</a>
					<p class="invisible">a</p>
				</form>
				<div class="col-8">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Mã sản phẩm</th>
								<th scope="col">Tên sản phẩm</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Giá gốc</th>
								<th scope="col">Giá hiện tại</th>
								<th scope="col">Mô tả</th>
								<th scope="col">Sửa</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>@twitter</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>Larry the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>