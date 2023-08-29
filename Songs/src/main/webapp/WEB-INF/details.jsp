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
<br>
<br>

<p class="d-flex justify-content-end m-2"><a href="/dash">Dashboard</a></p>
<div class="in-line">
	<h1 class="float-left">Song Info</h1>
</div>
	<hr>
	<div class="container mt-4">
   <div class="row">
        <div class="col">
            <table class="table table-striped">
                <tr>
                    <th>Title:</th>
                    <td><c:out value="${song.title}"></c:out></td>
                </tr>
                <tr>
                    <th>Artist:</th>
                    <td><c:out value="${song.artist}"></c:out></td>
                </tr>
                <tr>
                    <th>Rating (1-10):</th>
                    <td><c:out value="${song.rating}"></c:out></td>
                </tr>
            </table>
        </div>
        </div>
        <div class="row">
        <div class="col">
            <a href="/songs/${song.id}/delete" class="btn btn-warning">Delete</a>
        </div>
    </div>
</div>
</body>
</html>