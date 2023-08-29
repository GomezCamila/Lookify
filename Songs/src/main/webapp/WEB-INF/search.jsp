<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formateo fechas (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- Formulario form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- para errores de renderizado en rutas PUT -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AQUI EL TITULO DE TU PLNATILLA</title>
<!-- BOOTSTRAP  -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- cambiar para que coincida con Tu archivo/estructura de nombres -->
<link rel="stylesheet" href="/css/main.css">
<script type="text/javascript" src="/js/app.js"></script>

</head>
<body>
<body>
	<br>
	<br>
	<div class="container mt-4">
	<span class="d-flex justify-content-end m-2"><a href="/dash">Dashboard</a></span>
		<div class="row mb-3">
			<div class="col">
					<p class="fs-2">
						Songs by artist:
			           <c:forEach var="songGroup" items="${songs}" varStatus="status">
			                <c:if test="${status.first}">
			                    <c:set var="currentArtist" value="${songGroup.artist}" />
			                    <c:out value="${songGroup.artist}" />
			                </c:if>
			            </c:forEach>
					<p>
				<form class="form-inline" action="/bus" method="get">
					<div class="input-group">
						<input class="form-control mr-2" type="text" id="artist" name="q" placeholder="New Artist" />
						<div class="input-group-append">
							<input class="btn btn-outline-dark" type="submit"value="Search" />
						</div>
					</div>
				</form>
			</div>
		</div>
		<hr>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Rating</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="song" items="${songs}">
					<tr>
						<td><a href="/bus/${song.id}"><c:out
									value="${song.title}"></c:out></a></td>
						<td><c:out value="${song.rating}"></c:out></td>
						<td><a class="btn btn-warning" href="/bus/${song.id}/delete">delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>