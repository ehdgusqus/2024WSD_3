<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <title>Book Details</title>
</head>
<body>
  <h1>Book Details</h1>
  <p>ID: ${book.id}</p>
  <p>Title: ${book.title}</p>
  <p>Writer: ${book.writer}</p>
  <p>Genre: ${book.genre}</p>
  <p>Stock: ${book.stock}</p>
  <a href="/books/list">Back to List</a>
</body>
</html>
