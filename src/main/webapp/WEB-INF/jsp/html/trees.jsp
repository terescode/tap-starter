<%@ page
  language="java"
  contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"
  import="java.io.*, java.util.*, app.model.Tree"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
%><%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%><%
  Tree[] result = (Tree[]) request.getAttribute("result");
%><c:set var="pageTitle" value="The Trees" />
<%@include file="./partials/header.jsp"%>
<main role="main" class="py-5 bg-light">
  <div class="container">
    <div class="row">
      <div class="col">
        <h2>The Trees</h2>
        <form action="the-trees" method="GET">
          <p>
            <input type="submit" value="List The Trees" name="Submit" />  
          </p>
        </form>
      </div>
    </div>
    <div col="row">
      <div class="col results">
        <c:choose>
          <c:when test="${result != null && !empty(result)}">
            <table class="table">
						  <thead>
						    <tr>
						      <th scope="col">Scientific Name</th>
						      <th scope="col">Common Name</th>
						      <th scope="col">Bark Type</th>
						      <th scope="col">Leaf Type</th>
                  <th scope="col">Fruit Type</th>
						    </tr>
						  </thead>
						  <tbody>
						    <c:forEach items="${result}" var="tree">
						      <tr>
						        <td>${tree.scientificName}</td>
                    <td>${tree.commonName}</td>
                    <td>${tree.barkType}</td>
                    <td>${tree.leafType}</td>
                    <td>${tree.fruitType}</td>
						      </tr>
						    </c:forEach>
						  </tbody>
						</table>
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