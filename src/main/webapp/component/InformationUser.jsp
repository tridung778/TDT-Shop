<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Người Dùng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Thông Tin Người Dùng</h2>
        <div class="table-responsive">
            <table class="table">
                <thead>
                    <tr class="fs-5">
                        <th>Mã User</th>
                        <th>Tên User</th>
                        <th>Email</th>
                        <th>Ngày Sinh</th>
                        <th>Số Điện Thoại</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>M01</td>
                        <td>Trần Quốc Thuận</td>
                        <td>tqthuan@gmail.com</td>
                        <td>13-09-2004</td>
                        <td>0334445522</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="d-grid gap-2 d-md-flex justify-content-md-end"> <!-- Sử dụng grid system của Bootstrap để cỡ các nút -->
            <button class="btn btn-primary me-md-2 mb-2 mb-md-0" type="button">Cập Nhật Thông Tin</button>
            <button class="btn btn-primary" type="button">Đăng Xuất</button>
        </div>
    </div>
</body>
</html>
