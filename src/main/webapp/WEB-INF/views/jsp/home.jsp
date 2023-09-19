<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header.jsp"/>
<body>
<div class="container" style="margin-top:60px">
    <div class="row">
        <div class="col-xs-12 col-sm-8 col-md-6">
            <form:form action="search" method="get">
            <div class="input-group">
                <input name="searchInput" type="text" class="form-control" placeholder="Search by name or author..."/>
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit">
                        Search
                    </button>

                </span>
                </form:form>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-10">
                <c:if test="${not empty bookEntityList}">
                    <table class="table table-condensed table-hover">
                        <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Author</th>
                            <th>ISBN</th>
                            <th>Price</th>
                            <th>Publish Date</th>
                            <th>Category</th>
                        </tr>
                        </thead>
                 <tbody>
                 <c:forEach var="book" items="${bookEntityList}" varStatus="index">
                     <tr>
                         <td>${book.id}</td>
                         <td>${book.name}</td>
                         <td>${book.author}</td>
                         <td>${book.bookDetail.isbn}</td>
                         <td>${book.bookDetail.price}</td>
                         <td>${book.bookDetail.publishDate}</td>

                         <td>${book.category.name}</td>
                            <td>
                                <button class="btn btn-sm btn-primary" onclick="location.href='edit/${book.id}'">
                                    Edit
                                </button>
                                <button class="btn btn-sm btn-primary" onclick="location.href='delete/${book.id}'">
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
</div>
    <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
    <script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>