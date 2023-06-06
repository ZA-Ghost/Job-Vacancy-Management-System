<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Poster</title>
         <link rel="stylesheet" href="tableCSS.css"> 
        <link rel="stylesheet" href="tableMenuCSS.css">
    </head>
    <body>
         <form class="logout-form" action="logout.jsp" method="POST">
      <button type="submit">Logout</button>
    </form>
         <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search">
        </div>
        
        <script src="searchTable.js"></script>
        
      
          <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/jobposter"
     user="root"  password=""/>
 
    <sql:query dataSource="${snapshot}" var="result">
    SELECT * from job_post;
    </sql:query>
    <center> 
    <table>
     <tr>
         <th><a href="add_job_post.html">Add New Job </a></th>
     </tr>
     </table>
    
    
          <table id="dataTable">
            <tr>
                <th>Date Posted</th>
                <th>Job Description</th>
                <th>Closing Date</th>
            </tr>
       
           <c:forEach var="row" items="${result.rows}">
           
            
            <tr>
            <td><c:out value="${row.date}"/></td>
            <td><c:out value="${row.job_post}"/></td>
            <td><c:out value="${row.closing_date}"/></td>
            </tr>
            </c:forEach>
           </table>
        </center>
    </body> 
</html>

