<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SYbiks6VdZNAKT8DNoXQZwXAiuUo5/quw6nMKtFlGO/4WwxW86BSTMtgdzzB9JJl"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/styles.css">
<meta charset="UTF-8">
<title>Admin Add Item</title>
</head>
<body>
<h1>Add item</h1>
<p id="exists">${ alert }</p>
	<form action="add-item">
	Name:<input type="text" name="name" required>
	Quantity<input type="number" name="quantity" required>
	Price<input type="number" name="price" step="any" required>
		<p>
		<label>Item description</label>
		<textarea id="myTextArea" name = "description" rows="3" cols="80" required>Item Description</textarea>
		</p>
	<input type="submit" value="add">
	
	</form>
</body>
</html>