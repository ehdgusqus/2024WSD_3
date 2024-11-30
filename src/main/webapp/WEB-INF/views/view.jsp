<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <title>Book Details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
  <h1 class="text-center">Book Details</h1>
  <div class="card mt-4">
    <div class="card-body">
      <p><strong>Title:</strong> ${book.title}</p>
      <p><strong>Writer:</strong> ${book.writer}</p>
      <p><strong>Genre:</strong> ${book.genre}</p>
      <p><strong>Content:</strong> ${book.content}</p>
      <p><strong>Stock:</strong> ${book.stock}</p>
      <p><strong>Date:</strong> ${book.createDate}</p>

      <a href="${pageContext.request.contextPath}/books/list" class="btn btn-primary">Back to List</a>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
