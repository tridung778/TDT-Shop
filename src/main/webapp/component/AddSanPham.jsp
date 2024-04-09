<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style type="text/css">
body, html {
    height: 100%;
    margin: 0;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    width: 1000px;
    padding: 40px;
    border: 2px solid #ccc;
    border-radius: 5px;
}
form {
    margin: 20px;
    padding: 20px;
    border: 1px solid #ccc; 
    border-radius: 5px; 
    width: 800px;
    background-color: gray;
    font-size: 25px;
}

label {
    display: block;
    margin-bottom: 5px;
}

input[type="text"],
input[type="number"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px; 
    border: 1px solid #ccc; 
    border-radius: 5px; 
    box-sizing: border-box;
}

input[type="number"] {
    -moz-appearance: textfield;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

</style>
</head>
<body>

<div class="container">
  <ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item" role="presentation">	
      <button class="nav-link active" id="tab1-tab" data-bs-toggle="tab" data-bs-target="#tab1" type="button" role="tab" aria-controls="tab1" aria-selected="true">Cập Nhật</button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" id="tab2-tab" data-bs-toggle="tab" data-bs-target="#tab2" type="button" role="tab" aria-controls="tab2" aria-selected="false">Danh Sách</button>
    </li>
  </ul>
  <div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="tab1" role="tabpanel" aria-labelledby="tab1-tab">
      <form action="">
		<label>Mã Sản Phẩm</label>
		<input type="text"><br>
		<label>Tên Sản Phẩm</label>
		<input type="text"><br>
		<label>Số Lượng</label>
		<input type="number"><br>
		<label>Giá Gốc</label>
		<input type="number"><br>
		<label>Giá Hiện Tại</label>
		<input type="number"><br>
		<label>Mô Tả Sản Phẩm</label>
		<input type="text"><br>
	</form>
    </div>
    <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="tab2-tab">
      <h4>Thông Tin Sản Phẩm</h4>
  <table class="table">
  <tr class="fs-5">
    <th>Mã Sản Phẩm</th>
    <th>Tên Sản Phẩm</th>
    <th>Số Lượng</th>
    <th>Giá Gốc</th>
    <th>Giá Hiện Tại</th>
    <th>Mô Tả Sản Phẩm</th>
  </tr>
  <tr>
    <td></td>
  </tr>
  <tr>
    <td></td>
  </tr>
</table>

    </div>
  </div>
</div>
	
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</html>