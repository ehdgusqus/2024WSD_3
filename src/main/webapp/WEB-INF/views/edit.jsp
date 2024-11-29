<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
</head>
<body>
<h1>Edit Book</h1>
<form action="/books/updateBook" method="post">
    <input type="hidden" name="id" value="${book.id}" />
    <p>Title: <input type="text" name="title" value="${book.title}" /></p>
    <p>Writer: <input type="text" name="writer" value="${book.writer}" /></p>
    <p>Genre: <input type="text" name="genre" value="${book.genre}" /></p>
    <p>Content: <input type="text" name="content" value="${book.content}" /></p>
    <p>Stock: <input type="number" name="stock" value="${book.stock}" /></p>
    <button type="submit">Update</button>
</form>
</body>
</html>
