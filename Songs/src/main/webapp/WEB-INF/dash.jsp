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
<div class="container mt-4">
<h1 class="m-5">All Songs</h1>
        <div class="row mb-3">
            <div class="col">
                <a class="btn btn-dark" href="/songs/new">Add New</a>
            </div>
            <div class="col">
                <a class="btn btn-dark" href="/top-ten">Top Ten</a>
            </div>
            <div class="col">
                <form class="form-inline" action="/bus" method="get">
                    <div class="input-group">
                        <input class="form-control mr-2" type="text" id="artist" name="q" placeholder="Search artist" />
                        <div class="input-group-append">
                            <input class="btn btn-outline-dark" type="submit" value="Submit" />
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
                        <td><a href="/songs/${song.id}"><c:out value="${song.title}"></c:out></a></td>
                        <td><c:out value="${song.rating}"></c:out></td>
                        <td><a class="btn btn-warning" href="/songs/${song.id}/delete">delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>