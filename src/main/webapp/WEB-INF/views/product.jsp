<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

        <link rel="stylesheet"
              href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/
              bootstrap.min.css">
        <title>Products</title>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href='<c:url value="/resources/css/styles.css" />' type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src='<c:url value="/resources/js/controllers.js" />' ></script>
        <script src='<c:url value="/resources/js/scripts.js" />' ></script>
   
        <section class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img
                        src="<c:url value="/resources/images/${product.productId}.jpg"/>"
                        alt="image"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.name}</h3>
                    <p>${product.description}</p>
                    <p>
                        <strong>
							<spring:message code="product.itemCode.label" />
						</strong>
						<span class="label label-warning">${product.productId}</span>
                    </p>
                    <p>
                        <strong>
							<spring:message code="product.manufacturer.label" />
						</strong>
						${product.manufacturer}
                    </p>
                    <p>
                        <strong>
							<spring:message code="product.category.label" />
						</strong>
						${product.category}
                    </p>
                    <p>
                        <strong>
							<spring:message code="product.availability.label" />
                        </strong>
                        ${product.unitsInStock}
                    </p>
                    <h4>${product.unitPrice}USD</h4>
                    <p ng-controller="cartCtrl">
                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')"> 
                            <span class="glyphicon-shopping-cart glyphicon"></span>
							<spring:message code="product.orderNow.button" />
                        </a> 
                        <a href="<spring:url value="/cart" />" class="btn btn-default">
                            <span class="glyphicon-hand-right glyphicon"></span>
							<spring:message code="product.viewCart.button" />
                        </a>
                        <a href="<spring:url value="/products" />" class="btn btndefault">
                            <span class="glyphicon-hand-left glyphicon"></span>
							<spring:message code="product.back.button" />
                        </a>
                    </p>
                </div>
            </div>
        </section>
   