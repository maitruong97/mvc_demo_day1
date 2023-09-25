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
<h2 class="fw-bolder">User Registration Result </h2>
<%--@elvariable id="user" type=""--%>
    <table>
        <tr>
            <td class="col-1">First Name (*):</td>
            <td>${user.name}</td>
        </tr>
        <tr>
            <td>Last Name (*):</td>
            <td>${user.lastname}</td>
        </tr>
        <tr>
            <td>Password (*):</td>
            <td>${user.password}</td>
        </tr>
        <tr>
            <td>Detail:</td>
            <td>${user.detail}</td>
        </tr>
        <tr>
            <td>Birth Date:</td>
            <td>${user.birthDate}</td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>${user.gender}</td>
        </tr>
        <tr>
            <td>Country:</td>
            <td>${user.country}</td>
        </tr>
        <tr>
            <td>Non Smoking:</td>
            <td>${user.nonSmoking}</td>
        </tr>
    </table>
</body>
</html>