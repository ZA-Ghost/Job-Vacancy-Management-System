<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.io.*, java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<html>
<head>
    <title>Job Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1 {
            font-size: 24px;
            text-align: center; /* Center the title */
            margin-bottom: 20px;
        }

        h2 {
            font-size: 18px;
            margin: 0;
        }

        h3 {
            font-size: 16px;
            text-align: justify;
            text-align: center;
            margin-bottom: 10px;
        }

        p {
            line-height: 1.5;
            text-align: justify;
            margin-bottom: 20px;
        }

        .content {
            background-color: #fff;
            padding: 60px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 1000px;
            margin: 20px auto;
            box-sizing: border-box;
        }

        .info-section {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }

        .info-item {
            flex: 1;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="content">
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/jobposter"
            user="root" password=""/>
     
        <sql:query dataSource="${snapshot}" var="result">
            SELECT * from job_post where id=?;
            <sql:param value="${param.id}" />
        </sql:query>
    
        <c:forEach var="row" items="${result.rows}">
            <h1><c:out value="${row.jobTitle}" /></h1>
            
            <div class="info-section">
                <div class="info-item">
                    <h2>Date Posted</h2>
                    <h2><c:out value="${row.date}" /></h2>
                </div>
                <div class="info-item">
                    <h2>Job Reference</h2>
                    <h2><c:out value="${row.jobReference}" /></h2>
                </div>
                <div class="info-item">
                    <h2>Job Status</h2>
                    <h2><c:out value="${row.jobStatus}" /></h2>
                </div>
            </div>
    
            <h3>Job Description</h3>
            <p><c:out value="${row.job_post}" /></p>
        </c:forEach>
    </div>
</body>
</html>
