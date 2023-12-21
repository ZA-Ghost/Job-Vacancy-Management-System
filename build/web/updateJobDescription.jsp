<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin-Add Post</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <style>body {
  font-family: Arial, sans-serif;
}

.container {
  max-width: 800px;
  margin: 0 auto;
  padding: 30px;
  border: 1px solid #ccc;
  border-radius: 5px;
  background-color: #f2f2f2;
}

.container h2 {
  font-size: 25px;
  margin-bottom: 20px;
  text-align: center;
}

.form-group {
  display: flex;
  flex-direction: row;
  align-items: center;
  margin-bottom: 15px;
}

.form-group label {
  flex: 0 0 200px;
  text-align: right;
  margin-right: 20px;
  font-weight: bold;
}

#JP {
    
    height: 200px;
}

.form-group input,
.form-group select,
.form-group textArea
{
  flex: 1;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

.form-group input[type="submit"] {
  width: auto;
  margin: 0 auto;
  padding: 12px 20px;
  border: none;
  color: black;
  border-radius: 4px;
  background-color:  #f2f2f2;
  cursor: pointer;
  font-size: 16px;
}

.form-group input[type="submit"]:hover {
  background-color:   #ffffff;
}
</style>
    </head>
    <body>
        
     <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/jobposter"
     user="root"  password=""/>
 
    <sql:query dataSource="${snapshot}" var="result">
    SELECT * from job_post where id=?;
    <sql:param value="${param.id}" />
    </sql:query>
  
        
        <div class="container">
      <h2> Update Job Specifications </h2>
      <br>
       
        
        <form action="updateJobDescriptionProcess.jsp" method="post">
      
          
           <c:forEach var="row" items="${result.rows}">
          <div class="form-group">
      <label>ID</label>
    <input type="text" name="id" value="<c:out value="${row.id}"/>" readonly>
     </div>
    
          
          <div class="form-group">
            <label>Date Posted:</label>
           <input type="date" name="date" value="<c:out value="${row.date}"/>" required>
      </div>
      
       
       <div class="form-group">
            <label>Job Title</label>
           <input type="text" name="jobTitle" value="<c:out value="${row.jobTitle}"/>" required>
      </div>
            
       <div class="form-group">
            <label>Job Reference</label>
           <input type="text" name="jobReference" value="<c:out value="${row.jobReference}"/>" required>
      </div>
            
      <div class="form-group">
            <label>Job Description</label>
            <textarea name="job_post" id="JP"  value="<c:out value="${row.job_post}" />" required></textarea>
      </div>

        <div class="form-group">
            <label>Closing Date:</label>
           <input type="date" name="closing_date" value="<c:out value="${row.closing_date}"/>" required>
      </div>
            
         <div class="form-group">
            <label>Job Status</label>
           <select name="jobStatus" id="jobStatus" value="<c:out value="${row.jobStatus}"/>">
               <option value="open">Open</option>
                <option value="closed">Closed</option>
            </select>
         </div>     
            
        <div class="form-group">
        <input type="submit" value="Update">
      </div>     
        </form>
               
         </c:forEach>      
               
        </div>
    </body>
</html>
