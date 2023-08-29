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

<form:form action="/songs/new" method="post" modelAttribute="song">


<div class="container mt-4 bg-light">
        <div class="row mb-3">
            <div class="col">
                <span class="d-flex justify-content-end m-2"><a href="/dash">Dashboard</a></span>
                <h1 class="float-left text-center">ADD SONG</h1>
            </div>
        </div>
        <form action="/songs/new" method="post" modelAttribute="song">
            <table class="table">
                <thead>
                    <tr>
                        <td class="bg-green">Title:</td>
                        <td>
                            <form:errors path="title" class="text-danger" />
                            <form:input class="form-control" path="title" />
                        </td>
                    </tr>
                    <tr>
                        <td>Artist:</td>
                        <td>
                            <form:errors path="artist" class="text-danger" />
                            <form:input class="form-control" path="artist" />
                        </td>
                    </tr>
                    <tr>
                        <td>Rating (1-10):</td>
                        <td>
                            <form:errors path="rating" class="text-danger" />
                            <form:input class="form-control" type="number" path="rating" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input class="btn btn-dark" type="submit" value="Add Song" /></td>
                    </tr>
                </thead>
            </table>
        </form>
    </div>
	</form:form>
</body>
</html>