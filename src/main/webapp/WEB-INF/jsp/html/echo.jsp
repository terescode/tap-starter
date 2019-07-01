<%@ page
  language="java"
  contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  import="java.io.*, java.util.*"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%
  Map<String, Object> result = (Map<String, Object>) request.getAttribute("result");
%><c:set var="pageTitle" value="Test for Echo" />
<%@include file="./partials/header.jsp"%>
<main role="main" class="py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col">
        <h2>Test for Echo</h2>
        <form action="/test-for-echo" method="GET">
          <label for="p1">Parameter 1:</label>
          <input name="p1" id="p1" placeholder="Enter parameter name">
           <label for="v1">Value 1:</label>
           <input name="v1" id="v1" placeholder="Enter parameter value">
           <label for="p2">Parameter 2:</label>
           <input name="p2" id="p2" placeholder="Enter parameter name">
           <label for="v2">Value 2:</label>
           <input name="v2" id="v2" placeholder="Enter parameter value">
           <label for="p3">Parameter 3:</label>
           <input name="p3" id="p3" placeholder="Enter parameter name">
           <label for="v3">Value 3:</label>
           <input name="v3" id="v3" placeholder="Enter parameter value">
           <p>
            <input type="submit" value="Test for Echo" name="Submit" />  
           </p>
        </form>
      </div>
      <div class="col results">
        <h4>Result</h4>
        <c:choose>
          <c:when test="${result != null }">
            <textarea id="result-text">${result.toString().trim()}</textarea>
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