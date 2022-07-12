<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Product</title>
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
								<img src="../../images/logo.svg" alt="logo">
							</div>
							<h4>New product?</h4>
							<h6 class="font-weight-light">Add new product</h6>
							<form class="pt-3" action="updateproduct" method="post">
								<input type="hidden" value="${product.productId}"
									name="productId"><br>

								<div class="form-group">
									<input type="text" name="productName"
										class="form-control form-control-lg"
										id="exampleInputUsername1" value="${product.productName}"
										placeholder="Productname">
								</div>
								<div class="form-group">
									<input type="text" name="qty"
										class="form-control form-control-lg" id="exampleInputEmail1"
										value="${product.qty}" placeholder="Quentity">
								</div>
								<div class="form-group">
									<input type="number" name="price"
										class="form-control form-control-lg"
										id="exampleInputPassword1" value="${product.price}"
										placeholder="Price">
								</div>
								<div class="form-group">
									<input type="file" name="productImage"
										class="form-control form-control-lg"
										id="exampleInputPassword1" placeholder="Image">
								</div>
								<div class="mt-3">
									<input type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn"
										value="Update">
								</div>
								<div class="text-center mt-4 font-weight-light">
									<a href="newproduct" class="text-primary">New Product</a>
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
	<%-- <form action="updateproduct" method="post">
	<input type="hidden" value="${product.productId}" name="productId"><br>
	ProductName : <input type="text" name="productName" value="${product.productName}"><br>
	Price : <input type="text" name="price" value="${product.price}"><br>
	Quantity : <input type="text" name="qty" value="${product.qty}"><br>
	<input type="submit" value="update Product">
</form> --%>
	<jsp:include page="AllJs.jsp"></jsp:include>

</body>
</html>