<%@ include file="/WEB-INF/views/inc/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book Management</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- Hero Section -->
<div class="container mt-5">
    <div class="text-center">
        <h1 class="display-4">Welcome to the Book Management System</h1>
    </div>
</div>

<!-- Action Buttons -->
<div class="container text-center mt-4">
    <a href="books/list" class="btn btn-primary btn-lg m-2">View Book List</a>
    <a href="books/write" class="btn btn-success btn-lg m-2">Add New Book</a>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%@ include file="/WEB-INF/views/inc/bottom.jsp" %>
