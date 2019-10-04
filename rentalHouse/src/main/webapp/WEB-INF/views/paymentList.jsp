<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

	<title>Payments</title>
</head>

<body>
	<h1>Payments</h1>



	<table>
		<tr>
			<td>Id   </td>
			<td>Amount    </td>
			<td>Date</td>
			<td>Tenant_id</td>
		</tr>
		<tbody>
		<c:forEach var="payment" items="${payments}">
			<tr>


				<td><c:out value="${payment.id}" /></td>
				<td><c:out value="${payment.amount}" /></td>
				<td><c:out value="${payment.payDate}" /></td>
				<td><c:out value="${payment.tenant.id}" /></td>
				<td><a href="payments/${payment.id}"></a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<a href="payments/add"> Add a Payment</a>


</body>

</html>