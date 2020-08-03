<%@page import="com.demo.notetaker.entity.Notes"%>
<%@page import="java.util.List"%>
<%@page import="com.demo.notetaker.helper.FactoryProvider"%>
<%@page import="com.demo.notetaker.dao.NotesDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="components/common.jsp"%>
<title>Note-Taker : View Notes</title>
</head>
<body>
	<%@ include file="components/navbar.jsp"%>

	<div class="container">
		<marquee class="mt-2">Welcome to Note-Taker Application -
			where you can manage your application easily and effectively</marquee>
		<%
			NotesDao notesDao = new NotesDao(FactoryProvider.getFactory());
			List<Notes> list = notesDao.getNotes();
		%>
		<div class="card mt-2">
			<div class="card-header text-center">
				<h1>Note Taker</h1>
				<h3>You can view all your notes here...</h3>
			</div>
			<div class="card-body">
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<%if(list.isEmpty())
						{%>
						<h4 class="text-center" style="text-transform:uppercase;">*** No Notes to view ***</h4>
						<h3 class="text-center">
							<a href="add.jsp"><button class="btn btn-warning">ADD Notes	</button></a>
						</h3>
						<%}
							for (Notes notes : list) {
						%>
						<div class="card mt-3">
							<div class="card-header"><%=notes.getTitle()%></div>
							<div class="card-body"><%=notes.getContent()%></div>
							<div class="card-footer text-center">
								<a href="edit.jsp?noteId=<%=notes.getId()%>"><button
										class="btn btn-primary">Update</button></a> <a
									href="DeleteServlet?noteId=<%=notes.getId()%>"
									class="text-light"><button class="btn btn-danger">Delete</button></a>
							</div>
						</div>
						<%
							}
						%>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>