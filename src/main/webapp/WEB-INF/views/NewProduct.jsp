<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="AllCss.jsp"></jsp:include>
</head>
<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth px-0">
				<div class="row w-100 mx-0">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left py-5 px-4 px-sm-5">
							<div class="brand-logo">
								<img src="/images/logo.svg" alt="logo">
							</div>
							<h4>New product?</h4>
							<h6 class="font-weight-light">
								Add new product 
							</h6>
							<form class="pt-3" action="saveproduct" method="post">
								<div class="form-group">
									<input type="text" name="productName"
										class="form-control form-control-lg"
										id="exampleInputUsername1" placeholder="Productname">
								</div>
								<div class="form-group">
									<input type="text" name="qty"
										class="form-control form-control-lg" id="exampleInputEmail1"
										placeholder="Quentity">
								</div>
								<div class="form-group">
									<input type="number" name="price"
										class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Price">
								</div>
								<div class="form-group">
									<input type="file" name="productImage"
										class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Image">
								</div>
								<div class="mt-3">
									<input type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="Submit">
								</div>
						
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- <form action="saveproduct" method="post">
		Product Name: <input type="text" name="productName"
			placeholder="Enter product Name"> <br> Quantity : <input
			type="text" name="qty" placeholder="Enter quantity"><br>
		Price : <input type="text" name="price"
			placeholder="enter price of product"><br> Image : <input
			type="file" name="productImage"> <input type="submit"
			value="submit">
	</form> -->
	<jsp:include page="AllJs.jsp"></jsp:include>
</body>
</html>