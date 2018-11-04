<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<div class="pull-right" style="padding-right: 50px">
		<a href="?language=en">
			<spring:message code="navbar.language.english"/>
		</a>
		|
		<a href="?language=de">
			<spring:message code="navbar.language.romanian"/>
		</a>
	</div>
<br>

<li>
	<a href="<spring:url value="/products"/>">
		<spring:message code="navbar.home"/>
	</a>
</li>
<li>
	<a href="<spring:url value="/products/"/>">
		<spring:message code="navbar.products"/>
	</a>
</li>
<li>
	<a href="<spring:url value="/products/add"/>">
		<spring:message code="navbar.addProduct"/>
	</a>
</li>
<li>
	<a href="<spring:url value="/cart/"/>">
		<spring:message code="navbar.cart"/>
	</a>
</li>
<li>
	<a href="<spring:url value="/myaccount"/>">
		My account
<%-- 		<spring:message code="navbar.cart"/> --%>
	</a>
</li>
<!-- <li> -->
<!-- 	<a href="?language=en"> -->
<%-- 		<spring:message code="navbar.language.english"/> --%>
<!-- 	</a> -->
<!-- </li> -->
<!-- <li> -->
<!-- 	<a>|</a> -->
<!-- </li> -->
<!-- <li> -->
<!-- 	<a href="?language=de"> -->
<%-- 		<spring:message code="navbar.language.romanian"/> --%>
<!-- 	</a> -->
<!-- </li> -->