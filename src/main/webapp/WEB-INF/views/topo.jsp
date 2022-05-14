<!-- Cabecalho do JSP -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Projeto - Spring MVC</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/formularioCadastrarProduto">Cadastrar</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${pageContext.request.contextPath }/formularioListarProdutos">Listar</a>
      </li>
    </ul>
  </div>
</nav>

<%@include file="./base.jsp"%>

<!-- ${pageContext.request.contextPath } - Retorna para a url raiz, nesse exemplo será: http://localhost:8080/SpringMvcCrud -->