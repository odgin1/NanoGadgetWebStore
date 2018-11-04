<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/styles.css" />" type="text/css" >

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="<c:url value="/resources/js/scripts.js" />" type="text/javascript"></script>

	<section class="container">
		<form:form modelAttribute="newProduct" class="form-horizontal"
			enctype="multipart/form-data">
			<form:errors path="*" cssClass="alert alert-danger" element="div" />
			<fieldset>
				<legend><spring:message code="addProduct.form.header.label"/></legend>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="productId">
						<spring:message code="addProduct.form.productId.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="productId" path="productId" type="text"
							class="form:input-large" />
						<form:errors path="productId" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
						<spring:message code="addProduct.form.name.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text"
							class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitPrice">
						<spring:message code="addProduct.form.unitPrice.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="unitPrice" path="unitPrice" type="text"
							class="form:input-large" />
						<form:errors path="unitPrice" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="description"> 
					<spring:message	code="addProduct.form.description.label" />
					</label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" rows="2" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="manufacturer">
						<spring:message code="addProduct.form.manufacturer.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="manufacturer" path="manufacturer" type="text"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="category">
						<spring:message code="addProduct.form.category.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="category" path="category" type="text"
							class="form:input-large" />
						<form:errors path="category" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitsInStock">
						<spring:message code="addProduct.form.unitsInStock.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="unitsInStock" path="unitsInStock" type="text"
							class="form:input-large" />
						<form:errors path="unitsInStock" cssClass="text-danger" />
					</div>
				</div>

				<!-- we should not allow these fields to be bound to -->
				<!-- the form bean while adding a new product to our store. -->


				<!-- 				<div class="form-group"> -->
				<!-- 					<label class="control-label col-lg-2 col-lg-2" for="unitsInOrder">Units In Order </label> -->
				<!-- 					<div class="col-lg-10"> -->
				<%-- 						<form:input id="unitsInOrder" path="unitsInOrder" type="text"	class="form:input-large" /> --%>
				<!-- 					</div> -->
				<!-- 				</div> -->

				<!-- 				<div class="form-group"> -->
				<!-- 					<label class="control-label col-lg-2" for="discontinued">Discontinued</label> -->
				<!-- 					<div class="col-lg-10"> -->
				<%-- 						<form:checkbox id="discontinued" path="discontinued" /> --%>
				<!-- 					</div> -->
				<!-- 				</div> -->

				<div class="form-group">
					<label class="control-label col-lg-2" for="condition"> 
					<spring:message	code="addProduct.form.condition.label" />
					</label>
					<div class="col-lg-10">
						<form:radiobutton path="condition" value="New" />
						<spring:message	code="condition.radioButton.label1" />
						<form:radiobutton path="condition" value="Old" />
						<spring:message	code="condition.radioButton.label2" />
						<form:radiobutton path="condition" value="Refurbished" />
						<spring:message	code="condition.radioButton.label3" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="productImage"> 
					<spring:message	code="addProduct.form.productImage.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="productImage" path="productImage" type="file"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="<spring:message code="addProduct.form.button" />" />
					</div>
				</div>

			</fieldset>
		</form:form>
	</section>
