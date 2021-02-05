<%@page import="com.abhinav.bbs.Customer"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.*"%>
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
		<table class="table table-striped" border="2">
			<thead>
				<tr>
					<th width="25%">Ref. No.</th>
					<th width="25%">Sender</th>
					<th width="25%">Receiver</th>
					<th width="25%">Amount Transfered</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="u">
					<tr>
						<td width="25%">${u.getId()}</td>
						<td width="25%">${u.getSender()}</td>
						<td width="25%">${u.getReceiver()}</td>
						<td width="25%">${u.getAmount()}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>
