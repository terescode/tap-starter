<%@ page
  language="java"
  contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.io.*, java.util.*"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%
  Map<String, Object> result = (Map<String, Object>) request.getAttribute("result");
%><c:set var="pageTitle" value="Home" />
<%@include file="./partials/header.jsp"%>
<main role="main" class="py-5 bg-light">
	<div class="container"> 
		<div class="row">
			<div class="col">  
				<h1>Welcome</h1>
				<p>
					<strong>Pellentesque habitant morbi tristique</strong> senectus et
					netus et malesuada fames ac turpis egestas. Vestibulum tortor quam,
					feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
					libero sit amet quam egestas semper. <em>Aenean ultricies mi
						vitae est.</em> Mauris placerat eleifend leo. Quisque sit amet est et
					sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed,
					<code>commodo vitae</code>
					, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt
					condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac
					dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut
					felis. 
				</p>
	
				<h2>Header Level 2</h2>
	
				<ol>
					<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
					<li>Aliquam tincidunt mauris eu risus.</li>
				</ol>
	
				<blockquote>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget
						ligula molestie gravida. Curabitur massa. Donec eleifend, libero at
						sagittis mollis, tellus est malesuada tellus, at luctus turpis elit
						sit amet quam. Vivamus pretium ornare est.</p>
				</blockquote>
	
				<h3>Header Level 3</h3>
	
				<ul>
					<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
					<li>Aliquam tincidunt mauris eu risus.</li>
				</ul>
	
			</div>
		</div>
	</div>
</main>
<%@include file="./partials/footer.jsp"%>
