<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vacancy Hub</title>
    <link rel="stylesheet" href="tableCSS.css"> 
    <link rel="stylesheet" href="tableMenuCSS.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #f2f2f2;
            
            text-align: center;
            padding: 10px;
        }

        main {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e6f2ff;
        }

        .search-bar {
            margin-bottom: 10px;
            text-align: center;
        }

        input[type="text"] {
            width: 200px;
            padding: 8px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
    <header>
        <a href="Admin_Login.html"> <h1>Vacancy HUB</h1></a>
    </header>

    <main>
        <div class="search-bar">
            <input type="text" id="searchInput" placeholder="Search">
        </div>

        <script src="searchTable.js"></script>
 <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/jobposter"
     user="root"  password=""/>
 
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/jobposter"
    user="root" password=""/>

<sql:query dataSource="${snapshot}" var="result">
    SELECT * FROM job_post
    WHERE jobStatus = 'open'
    ORDER BY date DESC;
</sql:query>
    
    
            <table id="dataTable">
            <tr>
                <th>Job Title</th>
                <th>Reference</th>
                <th>Closing Date</th>
                <th>Job Status</th>
                <th>Info</th>
            </tr>   

            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.jobTitle}"/></td>
                    <td><c:out value="${row.jobReference}"/></td>
                    <td><c:out value="${row.closing_date}"/></td>
                    <td><c:out value="${row.jobStatus}"/></td>
                    <td><a href="viewJobDescription.jsp?id=<c:out value="${row.id}"/>">Info </a></td>
                </tr>
            </c:forEach>
        </table>
    </main>
</body>
</html>
