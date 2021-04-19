<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<% String ctxPath = request.getContextPath(); %>

<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/content.css" />
<link rel="stylesheet" media="(max-width: 800px)" href="<%=ctxPath %>/resources/css/content_mobile.css"/>
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/content_left.css" />
<link rel="stylesheet" type="text/css" href="<%=ctxPath%>/resources/css/content_right.css" />

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
	
	$(function(){
		
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
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</li>
						<li class="menu2">
							<ul>
								<li>최신순</li>
								<li class="menu_sort">
									<ul>
										<li>1</li>
										<li>2</li>
										<li>3</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		
		
		</div>
	</div>

</body>
</html>