<!DOCTYPE html>
<html>
<head>
    <title>Add New Book</title>
</head>
<body>
<h1>Add New Book</h1>
<form action="addBook" method="post">
    <label>Title: <input type="text" name="title"></label><br>
    <label>Writer: <input type="text" name="writer"></label><br>
    <label>Genre: <input type="text" name="genre"></label><br>
    <label>Content: <textarea name="content"></textarea></label><br>
    <label>Stock: <input type="number" name="stock"></label><br>
    <button type="submit">Add Book</button>
</form>
</body>
</html>
