<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Kity</title>
    <link href="${path}/resources/bootstrap-5.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
  	<style>
  		.bg{
	  		position: relative;
	  		z-index: 1;
	  		opacity : 1;
  		}
		.bg::before {
			content: "";
			position: absolute;
			top: 0; 
			left: 0;
			width: 100%;
			height: 100%;
			opacity: .6; 
			z-index: -1;
			background: url("${path}/resources/images/mainback.jpg") center center;
		}
		.container{
			width:100%;
			heigth:1000px;
		}
		.mainbody{
			width:100vw;
			height:100vh;
		}
  	</style>
  </head>
  <body class ="d-flex text-center text-bg-white mainbody bg">
	<div class = "container d-flex w-100 h-100 mx-auto flex-column">
		<header class ="mb-auto">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			  <div class="container-fluid">
			    <a class="navbar-brand" href="/kity">Kity</a>
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse" id="navbarSupportedContent">
			      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
			        <li class="nav-item">
			          <a class="nav-link active" aria-current="page" href="/kity/home">Home</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="/kity/board">Comunity</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link" href="/kity/shop">Shop</a>
			        </li>
			        <!-- <li class="nav-item dropdown">
			          <a class="nav-link dropdown-toggle" href="kity/shop" role="button" data-bs-toggle="dropdown" aria-expanded="false">
			            Dropdown
			          </a>
			          <ul class="dropdown-menu">
			            <li><a class="dropdown-item" href="#">Action</a></li>
			            <li><a class="dropdown-item" href="#">Another action</a></li>
			            <li><hr class="dropdown-divider"></li>
			            <li><a class="dropdown-item" href="#">Something else here</a></li>
			          </ul>
			        </li> -->
<!-- 			        <li class="nav-item">
			          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
			        </li> -->
			      </ul>
			      <form class="d-flex" role="search">
			        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
			        <button class="btn btn-outline-success" type="submit">Search</button>
			      </form>
			    </div>
			  </div>
			</nav>
		</header>
		<main class="px-3">
		    <p class="fs-1">Kity</p>
		    <p class="lead fw-bolder">"Kity" is an abbreviation for "Kitty City," a community site for cats.</p>
		    <p class="lead fw-bolder">This is 손명균's portfolio project.</p>
		    <p class="lead fw-bolder">
		      <a href="/kity/Auth/signin" class="btn btn-lg btn-light fw-bold border-white bg-white">START</a>
		    </p>
		  </main>
		 <footer class="mt-auto text-white-50">
		    <p>Cover template for <a href="https://getbootstrap.com/" class="text-white">Bootstrap</a>, by <a href="https://twitter.com/mdo" class="text-white">@mdo</a>.</p>
		 </footer>
	</div>
	<script src="${path}/resources/bootstrap-5.3.2-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

