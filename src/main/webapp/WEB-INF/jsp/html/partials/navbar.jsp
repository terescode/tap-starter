<%@ page 
  language="java" 
  contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  import="java.io.*, java.util.*"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn"
%><section class="navigation bg-light">
	<div class="container">
	  <div class="row">
		  <nav class="navbar navbar-expand-lg navbar-light bg-light">
		     <a class="navbar-brand" href="#">Navbar</a>
			   <button class="navbar-toggler"
					type="button" 
					data-toggle="collapse" 
					data-target="#navbarSupportedContent" 
					aria-controls="navbarSupportedContent" 
					aria-expanded="false"
					aria-label="Toggle navigation">
			     <span class="navbar-toggler-icon"></span>
			   </button>
			   <div class="collapse navbar-collapse" id="navbarSupportedContent">
			     <ul class="navbar-nav mr-auto">
			       <li class="nav-item active">
			         <a class="nav-link" href="/">Home</a>
			       </li>
			       <li class="nav-item">
			         <a class="nav-link" href="/test-for-echo">Echo</a>
			       </li>
			       <li class="nav-item">
			         <a class="nav-link" href="/roll-the-bones">Roll</a>
			       </li>
             <li class="nav-item">
               <a class="nav-link" href="/the-trees">Trees</a>
             </li>
			     </ul>
			   </div>
			 </nav>
	  </div>
	</div>
</section>