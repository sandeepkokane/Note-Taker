<%@page import="com.demo.notetaker.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common.jsp"%>
<title>Note-Taker : Home</title>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<main>
		<div class="container">
			<h1 class="text-center mx-auto">Welcome to the Note Taker
				Application</h1>
			<h3 class="text-center">Best Place to Store and Manage your
				notes...</h3>
			<hr>
			<marquee>Welcome to note taker application - a palce where
				you can manager your notes very effectively and efficiently</marquee>
			<hr>

			<div class="row text-center">
				<div class="col-md-6 ">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">Add notes easily</h5>
						</div>
						<div class="card-body">
							<p class="card-text">With supporting text below as a natural
								lead-in to additional content and adding functionality.</p>
							<a href="#" class="btn btn-primary">Click to Start adding...</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 ">
					<div class="card">
						<div class="card-header">
							<h5 class="card-title">View Notes easily</h5>
						</div>
						<div class="card-body">
							<p class="card-text">With supporting of updating and deleting
								notes very easily and efectively.</p>
							<a href="#" class="btn btn-primary">Click to View notes...</a>
						</div>
					</div>
				</div>
			</div>

			<div class="row mt-4 text-center">
				<div class="col-md-10 offset-md-1">
					<div class="card">
						<div class="card-header">
							<h1>Note Taker Application</h1>
						</div>
						<div class="card-body">
							<h3>Best way to store and manage your notes...</h3>
							<h3>Start adding notes now...</h3>
							<a href="add.jsp"><button class="btn btn-primary text-light">
									Start Now</i>
								</button></a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</main>


</body>
</html>