<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="components/common.jsp"%>
<title>Note-Taker : Add Note</title>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container mt-2">
		<marquee>Welcome to Note-Taker Application - where you can
			manage your notes easily...</marquee>
		<div class="card">
			<div class="card-header">
				<h1 class="text-center">Note Taker</h1>
				<h3 class="text-center">You can add a new note here...</h3>
				<h3><%@ include file="components/message.jsp"%></h3>
			</div>
			<div class="row mt-2">
				<div class="col-md-8 offset-md-2">
					<form action="Operation" method="post">
						<input type="hidden" name="operation" value="add">
						<div class="form-group">
							<label for="title">Note Title</label> <input type="text"
								id="title" name="title" placeholder="Enter title here"
								class="form-control" autofocus required>
						</div>
						<div class="form-group">
							<label for="content">Note Content</label>
							<textarea class="form-control" name="content"
								placeholder="Enter note content" required id="content"></textarea>
						</div>
						<div class="container text-center">
							<button class="btn btn-outline-primary" type="submit">Add
								Note</button>
							<button class="btn btn-outline-danger" type="reset">Reset</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>