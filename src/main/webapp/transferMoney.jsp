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
		<h3>Transfer Money</h3>
		<br>
	<form action="transactionController">
						<label for="sender">Sender's name:</label><br> 
						<input type="text" id="sender" name="sender"><br> 
						<label for="receiver">Receiver's name:</label><br> 
						<input type="text" id="receiver" name="receiver"><br> 
						<label for="amount">Transfer amount:</label><br> 
						<input type="text" id="amount" name="amount"><br><br> 
						<input type="submit" value="Transfer">
				</form>
			</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
