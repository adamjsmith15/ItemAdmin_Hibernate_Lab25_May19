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
<meta charset="UTF-8">
<title>Admin Edit Item</title>
</head>
<body>
<h1>Edit item</h1>
	<form action="edit-item">
	ID: ${ item.id } <input type="hidden" name="id" value="${ item.id } ">
	Name:<input type="text" name="name" placeholder="${ item.name }" required>
	Quantity<input type="number" name="quantity" placeholder="${ item.quantity }" required>
	Price<input type="number" name="price" step="any" placeholder="${ item.price }" required>
		<p>
		<label>Item description</label>
		<textarea id="myTextArea" name = "description" rows="3" cols="80" placeholder="${ item.description }" required></textarea>
		</p>
	<input type="submit" value="update">
	
	</form>
</body>
</html>