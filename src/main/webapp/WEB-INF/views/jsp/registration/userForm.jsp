<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="mvc" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<body>
<h2>User Registration Form </h2>
<%--@elvariable id="user" type=""--%>
<mvc:form modelAttribute="user" action="result">
    <table>
        <tr>
            <td>First Name (*)</td>
            <td><mvc:input path="name" required="true" placeholder="First Name"/></td>
        </tr>
        <tr>
            <td>Last Name (*)</td>
            <td><mvc:input path="lastname" required="true" placeholder="Last Name"/></td>
        </tr>
        <tr>
            <td>Password (*)</td>
            <td><mvc:password path="password" required="true" placeholder="Password"/></td>
        </tr>
        <tr>
            <td>Detail</td>
            <td><mvc:textarea path="detail"  placeholder="Detail information"/></td>
        </tr>
        <tr>
            <td>Birth Date</td>
            <td><mvc:input path="birthDate"  placeholder="Birth Date"/></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><mvc:radiobuttons path="gender" items="${gender}"/></td>
        </tr>
        <tr>
            <td>Country</td>
            <td><mvc:select path="country" items="${countries}"/> </td>
        </tr>
        <tr>
            <td>Non Smoking</td>
            <td><mvc:checkbox path="nonSmoking" checked="true"/></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Submit">
            </td>
        </tr>

    </table>

</mvc:form>
</body>
</html>