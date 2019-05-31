<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/materia/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-SYbiks6VdZNAKT8DNoXQZwXAiuUo5/quw6nMKtFlGO/4WwxW86BSTMtgdzzB9JJl"
	crossorigin="anonymous">
<meta charset="UTF-8">
<title>Admin Item Table</title>
</head>
<body>
	<h1>List of Items</h1>
	<div class="container">
		<table class="table" border=1>
			<thead>
				<tr>
					<td>Name</td>
					<td>Description</td>
					<td>Quantity</td>
					<td>Price</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ inven }" var="item">
					<tr>
						<td>${ item.name }</td>
						<td>${ item.description }</td>
						<td>${ item.quantity }</td>
						<td>${ item.price }</td>
						<td><a href="edit?id=${ item.id }">Edit</a></td>
						<td><a href="delete?id=${ item.id }" onclick="return confirmDelete()">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<a href="add">Add a new Item</a>
	<script>
	function confirmDelete() {
  var res = confirm("Are you sure you would like to delete this item?");
  if(res === true){
	  return true;
	  
  }else{
	  return false;
  }
	}
</script>

</body>
</html>