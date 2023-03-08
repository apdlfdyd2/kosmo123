<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-sm mybgColor">
	<div class="container-fluid">
		<ul class="navbar-nav">
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/main"
				class="nav-link active">Home</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/myboard/boardlist"
				class="nav-link">Board</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/upload/upboardList"
				class="nav-link">List(Upload)</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/mail/emailForm"
				class="nav-link">email</a></li>
			<li class="nav-item"><a
				href="${pageContext.request.contextPath}/web/survey/surveyForm"
				class="nav-link">survey</a></li>


			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">chart</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/web/chart/jsonstudent">barChart</a></li>
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/web/chart/donutchart">donutChart</a></li>
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/web/chart/deptJsonDemo">deptJsonDemo</a></li>
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/web/chart/listJsonDemo">listJsonDemo</a></li>
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/web/chart/surveydonutchartaJax">surveydonutchartaJax</a></li>
				</ul>
			</div>
			<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
		<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					data-bs-toggle="dropdown" aria-expanded="false">¸ô?·ç</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="${pageContext.request.contextPath}/web/tchart/busan">ºÎ»ê</a></li>
					</ul>
			</div>



			
		</ul>
		<form class="d-flex">
			<input class="form-control me-2" type="text" placeholder="Search"
				name="searchv" id="searchv">
			<button class="btn btn-primary" type="button">Search</button>
		</form>
	</div>
</nav>