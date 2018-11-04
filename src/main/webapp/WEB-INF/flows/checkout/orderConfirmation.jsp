<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> --%>
<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset="utf-8">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Order Confirmation</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Order</h1>
				<p>Order Confirmation</p>
			</div>
		</div>
	</section>
	<div class="container">
		<div class="row">
		
			<form:form modelAttribute="order" class="form-horizontal">
				<input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}" />
				<div class="well col-xs-10 col-sm-10 col-md-6 col-xsoffset-1 col-sm-offset-1 col-md-offset-3">
					<div class="text-center">
						<h1>Receipt</h1>
					</div>
					<div class="row">
						<div class="col-xs-6 col-sm-6 col-md-6">
<!-- 							<address> -->
								<strong>Shipping Address</strong> 
								<br>
								${order.shippingDetail.name}
								<br>
								${order.shippingDetail.shippingAddress.doorNo}, ${order.shippingDetail.shippingAddress.streetName}
								<br>
								${order.shippingDetail.shippingAddress.areaName}, ${order.shippingDetail.shippingAddress.state}
								<br>
								${order.shippingDetail.shippingAddress.country}, ${order.shippingDetail.shippingAddress.zipCode}
								<br>
								<br>
								<strong>Billing Address</strong> 
								<br>
								${order.customer.name}
								<br>
								${order.customer.billingAddress.doorNo}, ${order.customer.billingAddress.streetName}
								<br>
								${order.customer.billingAddress.areaName}, ${order.customer.billingAddress.state}
								<br>
								${order.customer.billingAddress.country}, ${order.customer.billingAddress.zipCode}
								<br>
								${order.customer.phoneNumber}
								<br>
								<br>
								<table class="table table-hover">
				                    <tr>
				                        <th>Product</th>
				                        <th>#</th>
				                        <th>Price</th>
				                        <th>Total</th>
				                    </tr>
				                    <c:forEach var="item" items="${order.cart.cartItems}">
					                    <tr>
					                    	
					                        <td>${item.value.product.name}</td>
					                        <td>${item.value.quantity}</td>
					                        <td>${item.value.product.unitPrice}</td>
					                        <td>${item.value.totalPrice}</td>
					                    </tr>
				                    </c:forEach>
				                    <tr>
				                        <th></th>
				                        <th></th>
				                        <th>Grand Total</th>
				                        <th>${order.cart.grandTotal}</th>
				                    </tr>
                				</table>
								<br>
								<br>
								<button id="back" class="btn btn-default" name="_eventId_backToCollectShippingDetail">back</button>
								
								<button type="submit" class="btn btn-success" name="_eventId_orderConfirmed">
									Confirm <span class="glyphicon glyphiconchevron-right"></span>
								</button>
								
								<button id="btnCancel" class="btn btn-default" name="_eventId_cancel">Cancel</button>
						</div>
					</div>
			</form:form>
			
		</div>
	</div>
</body>
</html>