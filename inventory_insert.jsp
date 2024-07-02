<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert Inventory</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	
	<style type="text/css">
		input {
	margin: 0.6rem 0;
}
	</style>
</head>
<body class="bg-black text-white">
	<div class="container">
		<h2 class="mt-5">Insert New Inventory</h2>
		<form action="invent" method="post" class="mt-3">
			<div class="form-group">
				<label for="itemName">Item Name:</label> <input type="text"
					class="form-control" id="itemName" name="itemName" required>
			</div>
			<div class="form-group">
				<label for="quantity">Quantity:</label> <input type="number"
					class="form-control" id="quantity" name="quantity" required>
			</div>
			<div class="form-group">
				<label for="availableQuantity">Available Quantity:</label> <input
					type="number" class="form-control" id="availableQuantity"
					name="availableQuantity" required>
			</div>
			<div class="form-group">
				<label for="daysOfSupply">Days of Supply:</label> <input
					type="number" class="form-control" id="daysOfSupply"
					name="daysOfSupply" required>
			</div>
			<div class="form-group">
				<label for="recentSalesTrend">Recent Sales Trend:</label> <input
					type="text" class="form-control" id="recentSalesTrend"
					name="recentSalesTrend">
			</div>
			<div class="form-group">
				<label for="minimumStockLevel">Minimum Stock Level:</label> <input
					type="number" class="form-control" id="minimumStockLevel"
					name="minimumStockLevel" required>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
