<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String ctxPath = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/content.css" />
<link rel="stylesheet" media="(max-width: 800px)" href="<%=ctxPath %>/resources/css/content_mobile.css"/>
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/content_left.css" />
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/content_right.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
	
	$(function(){
		
		$(".btn_selected").parent().addClass("sort_selected");
		
		
		
	});
		
</script>

</head>
<body>

	<div class="content_wrap">
		<div class="content_left">
		</div>
		<div class="content_right">
			<div class="menu_area">
				<div class="menu_btn_area">
					<ul>
						<li class="menu1">
							<ul>
								<li><button></button></li>
								<li><button></button></li>
								<li><button></button></li>
							</ul>
						</li>
						<li class="menu2">
							<ul>
								<li>
									<select class="time_sort">
										<option selected>최신순</option>
										<option>오래된순</option>
									</select>
								</li>
								<li class="view_sort">
									<ul>
										<li><button></button></li>
										<li><button></button></li>
										<li><button class="btn_selected"></button></li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="content_wrap">
				<div class="content_area">
				<ul class="photo_list">
					<c:if test="${not empty allphotos }">
						<c:forEach var="allphotosVO" items="${allphotos }">
							<li><div><img class="photo" src="<%=ctxPath %>/resources/photoImg/${allphotosVO.orgfilename}" alt="" /></div></li>		
						</c:forEach>
					</c:if>
					<c:if test="${empty allphotos }">
						<li><span>사진이 없습니다.</span></li>
					</c:if>
				</ul>
				</div>
			</div>
		</div>
		
		<div class="content_mobile_wrap">
			<div class="content_mobile">
				
			</div>
		</div>
		
	</div>

</body>
</html>