<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<t:master>
	<jsp:attribute name="header">
    </jsp:attribute>
	<jsp:attribute name="footer">
    </jsp:attribute>
	<jsp:body>
		          <div class="container">
    <div>
        <span style="font-size: 1.5em">List of Tenants</span>
        <span style="float:right;">
                <a class="btn btn-primary" href="addTenant">New Tenant</a>
            	<button id="btnSubmit" type="submit" class="btn btn-light">Print </button>
			</span>
    </div> 
      <table class="table">
        <thead>
        <tr>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Gender</th>
                  <th scope="col">Age</th>
                   <th scope="col">Operations</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tenant" items="${tenants}">
            <tr>
                <td>${tenant.firstName}</td>
                <td>${tenant.lastName}</td>
                <td>${tenant.gender}</td>
                <td>${tenant.age}</td>
                <td><a href="tenants/${tenant.id}">edit</a></td> 
           </tr>
        </c:forEach>
        </tbody>
    </table>
    
</div>

    </jsp:body>
</t:master>