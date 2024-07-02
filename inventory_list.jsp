<%@ page import="java.util.List"%>
<%@ page import="inventory.Inventory"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Inventory List</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body class="bg-black text-white">
	<nav class="navbar navbar-expand-lg navbar-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
				</a></li>
				<li class="nav-item"><a class="nav-link" href="sales">Sales</a></li>
				<li class="nav-item"><a class="nav-link" href="products">Product</a></li>
				<li class="nav-item"><a class="nav-link active" href="list">Inventory</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="customer">Customer</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<h2 class="mt-5">Inventory List</h2>
		<a href="inventory_insert.jsp" class="btn btn-primary mt-3">Add
			New Inventory</a>
		<table class="table table-bordered table-striped table-dark my-3">
			<thead>
				<tr>
					<th>ID</th>
					<th>Item Name</th>
					<th>Quantity</th>
					<th>Available Quantity</th>
					<th>Days of Supply</th>
					<th>Recent Sales Trend</th>
					<th>Minimum Stock Level</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<%
				List<Inventory> inventoryList = (List<Inventory>) request.getAttribute("inventoryList");
				if (inventoryList != null) {
					for (Inventory inventory : inventoryList) {
				%>
				<tr>
					<td><%=inventory.getItemId()%></td>
					<td><%=inventory.getItemName()%></td>
					<td><%=inventory.getQuantity()%></td>
					<td><%=inventory.getAvailableQuantity()%></td>
					<td><%=inventory.getDaysOfSupply()%></td>
					<td><%=inventory.getRecentSalesTrend()%></td>
					<td><%=inventory.getMinimumStockLevel()%></td>
					<td><a href="update?id=<%=inventory.getItemId()%>"
						class="btn btn-info">Edit</a> <a
						href="delete?id=<%=inventory.getItemId()%>" class="btn btn-danger">Delete</a></td>
				</tr>
				<%
				}
				}
				%>
			</tbody>
		</table>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
