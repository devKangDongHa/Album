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
		
		$(".view_big > button").click(function(){
			$(".view_sort li").removeClass("sort_selected");
			$(".view_sort li button").removeClass("btn_selected");
			$(this).addClass("btn_selected");
			$(this).parent().addClass("sort_selected");
			$(".photo").css('width','15.5rem');
			$(".photo").css('height','21.7rem');
		});
		
		$(".view_medium > button").click(function(){
			$(".view_sort li").removeClass("sort_selected");
			$(".view_sort li button").removeClass("btn_selected");
			$(this).addClass("btn_selected");
			$(this).parent().addClass("sort_selected");
			$(".photo").css('width','8.5rem');
			$(".photo").css('height','11.9rem');
		});
		
		$(".view_small > button").click(function(){
			$(".view_sort li").removeClass("sort_selected");
			$(".view_sort li button").removeClass("btn_selected");
			$(this).addClass("btn_selected");
			$(this).parent().addClass("sort_selected");
			$(".photo").css('width','5rem');
			$(".photo").css('height','7rem');
		});
		
		$(".photo").parent().hover(function(){
			$(this).css('opacity', '0.4');
			$(this).css('z-index', '-5');
			$(this).children(".check").css('display','block');
			$(this).children(".like").css('display','block');
		}, function(){
			$(this).css('opacity', '1.0');
			$(this).css('z-index', '1');
			$(this).children(".check").css('display','none');
			$(this).children(".like").css('display','none');	
		});
		
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
										<li class="view_big"><button></button></li>
										<li class="view_medium"><button></button></li>
										<li class="view_small"><button class="btn_selected"></button></li>
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
							<li>
							<div class="photo" style="background-image: url('<%=ctxPath%>/resources/photoImg/${allphotosVO.photo_name }'); "></div>
							<div class="check none">v</div>
							<div class="like none">a</div>
							</li>		
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