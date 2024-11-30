<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-4">
    <h1 class="text-center">Edit Book</h1>
    <form action="${pageContext.request.contextPath}/books/updateBook" method="post" class="mt-4">
        <!-- Hidden ID Field -->
        <input type="hidden" name="id" value="${book.id}" />

        <!-- Title Field -->
        <div class="mb-3">
            <label for="title" class="form-label">Title:</label>
            <input type="text" id="title" name="title" value="${book.title}" class="form-control" required />
        </div>

        <!-- Writer Field -->
        <div class="mb-3">
            <label for="writer" class="form-label">Writer:</label>
            <input type="text" id="writer" name="writer" value="${book.writer}" class="form-control" required />
        </div>

        <!-- Genre Field -->
        <div class="mb-3">
            <label for="genre" class="form-label">Genre:</label>
            <input type="text" id="genre" name="genre" value="${book.genre}" class="form-control" required />
        </div>

        <!-- Content Field -->
        <div class="mb-3">
            <label for="content" class="form-label">Content:</label>
            <input type="text" id="content" name="content" value="${book.content}" class="form-control" />
        </div>

        <!-- Stock Field -->
        <div class="mb-3">
            <label for="stock" class="form-label">Stock:</label>
            <input type="number" id="stock" name="stock" value="${book.stock}" class="form-control" required />
        </div>

        <!-- Submit Button -->
        <button type="submit" class="btn btn-success">Update</button>
        <a href="${pageContext.request.contextPath}/books/list" class="btn btn-danger">Cancel</a>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
