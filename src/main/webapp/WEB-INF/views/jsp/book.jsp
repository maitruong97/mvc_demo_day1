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

            <%--@elvariable id="book" type=""--%>
            <form:form action="${action}" method="post" modelAttribute="book">
                <fieldset class="scheduler-border">
                    <legend class="scheduler-border">
                        <c:out value="${msg}"/>
                    </legend>
                    <c:if test="${type.equals('update')}">
                        <div class="form-group">
                            <label class="control-label">
                                ID
                            </label>
                            <form:input path="id" type="text" class="form-control" id="id" placeholder="ID" disabled="true"/>
                                <form:hidden path="bookDetails.id"/>

                        </div>
                    </c:if>
                    <div class="form-group">
                        <label class="control-label">
                            Name (*)
                        </label>
                        <form:input path="name" type="text" class="form-control" id="id" placeholder="Name" required="true"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            Author(*)
                        </label>
                        <form:input path="author" type="text" class="form-control" id="id" placeholder="Author" required="true"/>
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            ISBN
                        </label>
                        <form:input path="bookDetails.isbn" type="text" class="form-control" id="id" placeholder="ISBN" required="true"/>

                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            Price(*)
                        </label>
                        <form:input path="bookDetails.price" type="number" class="form-control" step="any" placeholder="Price" required="true" min="1"/>

                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            NumberOfPage(*)
                        </label>
                        <form:input path="bookDetails.numberOfPage" type="number" class="form-control" step="any" placeholder="NumberOfPage" required="true" min="1"/>

                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            Publish Date
                        </label>
                        <form:input path="bookDetails.publishDate" type="date" class="form-control" id="id" placeholder="PublishDate" required="true"/>

                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            Category(*)
                        </label>
                        <form:select path="category.id" class="form-group">
                            <form:option value="0"  label="=====Select====="/>
                            <form:options items="${categoryList}" />
                        </form:select>

                    </div>
                        <br>

                    <button type="submit" class="btn btn-info">Save</button>
                </fieldset>
            </form:form>

            </div>

    </div>
        </div>

</body>
</html>