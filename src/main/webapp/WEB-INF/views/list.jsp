<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">

    <!-- Search Form -->
    <form action="search" method="get" class="d-flex mb-4">
        <input type="text" name="keyword" placeholder="Search title or writer or genre..." value="${keyword}" class="form-control me-2" />
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <!-- Book Table -->
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Writer</th>
            <th>Genre</th>
            <th>Stock</th>
            <th>Date</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:choose>
            <c:when test="${not empty books}">
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.title}</td>
                        <td>${book.writer}</td>
                        <td>${book.genre}</td>
                        <td>${book.stock}</td>
                        <td>${book.createDate}</td>
                        <td>
                            <a href="view/${book.id}" class="btn btn-primary btn-sm">View</a>
                            <a href="edit/${book.id}" class="btn btn-success btn-sm">Edit</a>
                            <form action="deleteBook" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="${book.id}" />
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="7" class="text-center">No books available.</td>
                </tr>
            </c:otherwise>
        </c:choose>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%@ include file="/WEB-INF/views/inc/bottom.jsp" %>