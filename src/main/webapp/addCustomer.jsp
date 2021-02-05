<!DOCTYPE html>
<html lang="en">
<head>
<title>Basic Banking System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="navigation.jspf"%>
	<div class="container">
		<h1>Welcome</h1>
		<br>
		<br>
		<h3>Add Account</h3>
		<br>
		<form action="addCustomer">
						<label for="name">Name:</label><br> 
						<input type="text" id="name" name="name"><br> 
						<label for="email">Email:</label><br> 
						<input type="text" id="email" name="email"><br> 
						<label for="acnt_bal">Starting account balance:</label><br> 
						<input type="text" id="acnt_bal" name="acnt_bal"><br><br> 
						<input type="submit" value="Add Customer">
				</form>
			</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
