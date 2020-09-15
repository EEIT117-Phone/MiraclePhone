<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
	<!-- ****************** meta section ****************** -->
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- ****************** css section ****************** -->
	
	<!-- Bootstrap core CSS -->
	<link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
	<!-- Carousel core CSS -->
	<link href="<c:url value='/css/carousel.css' />" rel="stylesheet">
	<!-- Header core CSS -->
	<link href="<c:url value='/css/header.css' />" rel="stylesheet">
	<!-- Generic core CSS -->
	<link href="<c:url value='/css/Generic.css' />" rel="stylesheet">
	<!-- ****************** js section ****************** -->
	 
	<!-- Jquery js -->
	<script src="<c:url value='/js/jquery-3.5.1.min.js' />"></script>
	<!-- Bootstrap js -->
	<script src="<c:url value='/js/bootstrap.bundle.min.js' />"></script>
	<!-- Header js -->
	<script src="<c:url value='/js/header.js' />"></script>
	
	<script type="text/javascript">
		var CONTEXT_PATH = <c:url value='/' />;
	</script>
</head>
<body>
	<!-- Header -->
	<tiles:insertAttribute name="header" />
	<!-- Body Page -->
	<tiles:insertAttribute name="body" />
	<!-- foot Page -->
	<tiles:insertAttribute name="foot" />
</body>
</html>