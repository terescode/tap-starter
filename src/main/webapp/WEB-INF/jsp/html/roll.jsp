<%@ page
  language="java"
  contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  import="java.io.*, java.util.*"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%
  String result = (String) request.getAttribute("result");
%><c:set var="pageTitle" value="Roll the Bones" />
<%@include file="./partials/header.jsp"%>
<main role="main" class="py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col">
        <h2>Roll the Bones</h2>
        <form action="/roll-the-bones" method="GET">
          <p>
            <input type="submit" value="Roll the Bones" name="Submit" />  
          </p>
        </form>
      </div>
      <div class="col results">
        <h4>You rolled...</h4>
        <c:choose>
          <c:when test="${result != null }">
            <p><strong>${result.toString().trim()}</strong></p>
          </c:when>
          <c:otherwise>
            No result.
          </c:otherwise>
        </c:choose>
      </div>
    </div>
  </div>
</main>
<%@include file="./partials/footer.jsp"%>