<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">    <link rel="stylesheet " href="/resources/css/main.css">
    <script type="text/javascript" src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<h2 class="fw-bolder">User Registration Form </h2>
<%--@elvariable id="user" type=""--%>
<mvc:form modelAttribute="user" action="result">
    <table class="table table-hover table-condensed">
        <tr>
            <td class="col-1">First Name (*)</td>
            <td><mvc:input path="name" required="true" placeholder="First Name" class="form-control"/></td>
        </tr>
        <tr>
            <td>Last Name (*)</td>
            <td><mvc:input path="lastname" required="true" placeholder="Last Name" class="form-control"/></td>
        </tr>
        <tr>
            <td>Password (*)</td>
            <td><mvc:password path="password" required="true" placeholder="Password" class="form-control"/></td>
        </tr>
        <tr>
            <td>Detail</td>
            <td><mvc:textarea path="detail"  placeholder="Detail information" class="form-control"/></td>
        </tr>
        <tr>
            <td>Birth Date</td>
            <td><mvc:input path="birthDate"  placeholder="Birth Date" class="form-control"/></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><mvc:radiobuttons path="gender" items="${gender}" class="btn btn-primary"/></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><mvc:select path="country" items="${countries}" class="form-control"/> </td>
        </tr>
        <tr>
            <td>Non Smoking</td>
            <td><mvc:checkbox path="nonSmoking" checked="true" /></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit" class="btn btn-primary">
            </td>
        </tr>

    </table>

</mvc:form>
</body>
</html>