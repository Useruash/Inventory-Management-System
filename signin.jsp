<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Sign In</title>
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
	<div class="container mt-5">
		<h2>User Sign In</h2>
		<form id="signinForm" action="signin" method="post"
			onsubmit="return validateForm()">
			<div class="form-group">
				<label for="username">Username:</label> <input type="text"
					class="form-control" id="username" name="username" required>
				<div id="usernameError" class="error-message"></div>
			</div>
			<div class="form-group">
				<label for="password">Password:</label> <input type="password"
					class="form-control" id="password" name="password" required>
				<div id="passwordError" class="error-message"></div>
			</div>
			<button type="submit" class="btn btn-primary">Sign In</button>
		</form>
	</div>
	<!-- Bootstrap JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		function validateForm() {
			var valid = true;
			var username = document.getElementById('username').value.trim();
			var password = document.getElementById('password').value.trim();
			var usernameError = document.getElementById('usernameError');
			var passwordError = document.getElementById('passwordError');

			// Reset error messages
			usernameError.innerHTML = '';
			passwordError.innerHTML = '';

			// Validate username
			if (username === '') {
				usernameError.innerHTML = 'Username is required';
				valid = false;
			}

			// Validate password
			if (password === '') {
				passwordError.innerHTML = 'Password is required';
				valid = false;
			}

			return valid;
		}
	</script>
</body>
</html>
