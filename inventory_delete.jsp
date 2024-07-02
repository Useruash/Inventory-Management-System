<!-- delete_inventory.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Inventory</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body class="bg-black text-white">
    <div class="container">
        <h2 class="mt-5">Delete Inventory</h2>
        <p>Are you sure you want to delete this inventory item?</p>
        <form action="delete" method="post">
            <input type="hidden" name="id" value="${inventory.itemId}">
            <button type="submit" class="btn btn-danger">Delete</button>
            <a href="list" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
</body>
</html>
