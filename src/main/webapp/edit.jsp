<%@page import="com.demo.notetaker.entity.Notes"%>
<%@page import="com.demo.notetaker.helper.FactoryProvider"%>
<%@page import="com.demo.notetaker.dao.NotesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common.jsp"%>
<title>Note-Taker : Update Notes</title>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<div class="container mt-4">
		<marquee>Welcome to Note-Taker Application - where you can
			manage your notes easily...</marquee>
		<div class="card">
			<div class="card-header">
				<h1 class="text-center">Note Taker</h1>
				<h3 class="text-center">You can edit your notes here...</h3>
				<h3><%@ include file="components/message.jsp"%></h3>
			</div>
			<%
				int id = Integer.parseInt(request.getParameter("noteId"));

			NotesDao notesDao = new NotesDao(FactoryProvider.getFactory());
			Notes notes = notesDao.getNotesById(id);
			%>
			<div class="row mt-4">
				<div class="col-md-8 offset-md-2">
					<form action="Operation" method="post">
						<input type="hidden" name="operation" value="update"> <input
							type="hidden" name="noteId" value="<%=notes.getId()%>">
							<div class="form-group">
							<label for="title">Note Title</label> <input type="text"
								id="title" name="title" value="<%=notes.getTitle()%>"
								class="form-control" autofocus required>
						</div>
							<div class="form-group">
							<label for="content">Note Content</label>
							<textarea class="form-control" name="content"
								value="<%=notes.getContent()%>" required id="content"></textarea>
						</div>
							<div class="container text-center">
							<button class="btn btn-primary" type="submit">Update Note</button>
							<button class="btn btn-danger" type="reset">Reset</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>