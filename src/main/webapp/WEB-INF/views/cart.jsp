<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href='<c:url value="/resources/css/styles.css" />' type="text/css" media="screen" />
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src='<c:url value="/resources/js/controllers.js" />'></script>
        <script src='<c:url value="/resources/js/scripts.js" />'></script>
       
        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
                <div>
                    <a class="btn btn-danger pull-left" ng-click="clearCart()"> 
                        <span class="glyphicon glyphicon-remove-sign"></span>
                        <spring:message code="cart.clearCart.button" />
                    </a> 
                    <a href="<spring:url value="/checkout?cartId=${cartId}"/>" class="btn btn-success pull-right"> 
                        <span class="glyphicon-shopping-cart glyphicon"></span>
                        <spring:message code="cart.checkout.button" />
                    </a>
                </div>
                <table class="table table-hover">
                    <tr>
                        <th>
                        	<spring:message code="cart.table.product.label" />
                        </th>
                        <th>
                        	<spring:message code="cart.table.unitPrice.label" />
                        </th>
                        <th>
                        	<spring:message code="cart.table.quantity.label" />
                        </th>
                        <th>
                        	<spring:message code="cart.table.price.label" />
                        </th>
                        <th>
                        	<spring:message code="cart.table.action.label" />
                        </th>
                    </tr>
                    <tr ng-repeat="item in cart.cartItems">
                        <td>{{item.product.productId}}-{{item.product.name}}</td>
                        <td>{{item.product.unitPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td>
                        	<a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)"> 
                                <span class="glyphicon glyphicon-remove" /></span>
                                <spring:message code="cart.remove.button" />
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>
                        	<spring:message code="cart.table.grandTotal.label" />
                        </th>
                        <th>{{cart.grandTotal}}</th>
                        <th></th>
                    </tr>
                </table>
                <a href="<spring:url value="/products" />" class="btn btndefault">
                    <span class="glyphicon-hand-left glyphicon"></span>
                    <spring:message code="cart.continueShopping.button" />
                </a>
            </div>
        </section>
  