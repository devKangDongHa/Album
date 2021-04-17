<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<% String ctxPath = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/header1.css" />
<link rel="stylesheet" media="(min-widht:0px) and (max-width:800px)" href="<%=ctxPath%>/resources/css/header1_mobile.css">

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
	
	$(function(){
		
	});
		
</script>

<div class="header_wrap">
	<div class="header">
		<h1 class="title">
			<a href="#">Album</a>
		</h1>
		
		<ul>
			<li><a>검색</a></li>
		</ul>
	</div>
	<button>선택</button>
	<button>메뉴</button>	
</div>