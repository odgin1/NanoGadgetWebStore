<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href='<c:url value="/resources/css/styles.css" />' type="text/css" media="screen" />
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src='<c:url value="/resources/js/controllers.js" />'></script>
        <script src='<c:url value="/resources/js/scripts.js" />'></script>
       
        <section class="container">
            <div class="row">
                <c:forEach items="${products}" var="product">
                    <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                        <div class="thumbnail">
<%--                             <img src="<%=session.getAttribute("uploadFile")%>" alt="image"  /> --%>
                            <img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="image"  />

                            <div class="caption">
                                <h3>${product.name}</h3>
                                <p>${product.description}</p>
                                <p>$${product.unitPrice}</p>
                                <p>Available ${product.unitsInStock} units in stock</p>
                                <p>
                                    <a href=" <spring:url value="/products/product?id=${product.productId}" /> " class="btn btn-primary"> 
                                    	<span class="glyphicon-info-sign glyphicon" /></span>
                                    	<spring:message code="products.product.details.button" />
                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </section>
    