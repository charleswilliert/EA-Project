
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>

<body>


<form:form modelAttribute="payment" action="paymentDetail" method="post">

    <table>
        <tr>
            <td>Amount:</td>
            <td><form:input path="amount" /></td>

        </tr>
        <tr>
            <td>Date:</td>
            <td><form:input path="payDate" /></td>
        </tr>



        <div class="col-md-6">
            <div class="form-group">
                <label for="tenant">Tenant</label><br/>
                <form:select path="tenant" class="form-control">
                    <c:forEach items="${tenants}" var="tenant">
                        <option value="${tenant.id}">${tenant.id}</option>


                </c:forEach>

                </form:select>

            </div>
        </div>


    </table>
    <input type="submit" value="submit" />
</form:form>

</body>
</html>