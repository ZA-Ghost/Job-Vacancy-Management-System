<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.io.*, java.util.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <sql:setDataSource var="jobPoster" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/jobposter"
     user="root"  password=""/>
 
<c:set var="id" value="${param.id}" />
<c:set var="date" value="${param.date}" />
<c:set var="jobTitle" value="${param.jobTitle}" />
<c:set var="jobReference" value="${param.jobReference}" />
<c:set var="job_post" value="${param.job_post}" />
<c:set var="closing_date" value="${param.closing_date}" />
<c:set var="jobStatus" value="${param.jobStatus}" />

<sql:update dataSource="${jobPoster}" var="dbResult">
    UPDATE job_post 
    SET date = ?, jobTitle = ?, jobReference = ?, job_post = ?, closing_date = ?, jobStatus = ?
    WHERE id =?
    
    <sql:param value="${param.date}" />
    <sql:param value="${param.jobTitle}" />
    <sql:param value="${param.jobReference}" />
    <sql:param value="${param.job_post}" />
    <sql:param value="${param.closing_date}" />
    <sql:param value="${param.jobStatus}" />
    <sql:param value="${id}" />
</sql:update>

      <c:if test="${dbResult>=1}">
         <c:redirect url="admin-job-post.jsp" >
            <c:param name="msg" value="Details Have Been Uploaded" />
         </c:redirect>
      </c:if>      
            
    </body>
</html>
