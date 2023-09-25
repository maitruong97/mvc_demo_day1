<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"/>
<body>
<div class="container" style="margin-top:60px">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6">
            <form:form action="${pageContext.request.getContextPath()}/search" method="get">
            <div class="input-group">
                <input name="searchInput" type="text" class="form-control" placeholder="Search by name or author..."/>
                <span class="input-group-btn">
                    <button class="btn btn-info" type="submit">
                        Search
                    </button>
                </span>
            </div>
            </form:form>
        </div>
            <div class="col-xs-12 col-sm-12 col-md-10">
                <c:if test="${ not empty bookEntityList}">
                    <table class="table  table-hover">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Author</th>
                            <th>ISBN</th>
                            <th>Price</th>
                            <th>Publish Date</th>
                            <th>Category</th>
                            <th></th>
                            <th></th>
                        </tr>
                        </thead>
                 <tbody>
                 <c:forEach var="book" items="${bookEntityList}" varStatus="index">
                     <tr>
                         <td>${book.id}</td>
                         <td>${book.name}</td>
                         <td>${book.author}</td>
                         <td>${book.bookDetails.isbn}</td>
                         <td>${book.bookDetails.price}</td>
                         <td>${book.bookDetails.publishDate}</td>
                         <td>${book.category.name}</td>
                         <td>
                                <button class="btn btn-sm btn-primary" onclick="location.href='edit/${book.id}'">
                                    Edit
                                </button>
                         </td>
                         <td>
                             <button class="btn btn-sm btn-danger" onclick="location.href='delete/${book.id}'">
                                 Delete
                             </button>
                         </td>
                     </tr>
                 </c:forEach>
                 </tbody>
                    </table>
                </c:if>
                <c:if test="${bookEntityList.size() == 0}">
                    <br>
                    <div class="alert alert-warning">
                        There is no data
                    </div>
                </c:if>
            </div>
        </div>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.4.12/jquery.min.js/"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
    <script src="${pageContext.request.getContextPath()}/webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>


</body>
</html>