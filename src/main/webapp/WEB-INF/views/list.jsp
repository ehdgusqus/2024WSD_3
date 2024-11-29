<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>
<h1>Book List</h1>
<table border="1">
    <thead>
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
                        <a href="view/${book.id}">View</a> |
                        <a href="edit/${book.id}">Edit</a> |
                        <form action="deleteBook" method="post" style="display:inline;">
                            <input type="hidden" name="id" value="${book.id}" />
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </c:when>

        <c:otherwise>
            <tr>
                <td colspan="7">No books available.</td>
            </tr>
        </c:otherwise>
    </c:choose>
    </tbody>
</table>
</body>
</html>
