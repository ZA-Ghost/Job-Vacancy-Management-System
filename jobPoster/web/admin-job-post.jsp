<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Job Poster</title>
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
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        header a {
            text-decoration: none;
            color: #333;
            margin: 0 10px;
        }

        main {
            max-width:1200px;
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
            width:500px;
            padding: 36px;
            box-sizing: border-box;
        }

        .logout-form {
            text-align: right;
        }

        .logout-form button {
            background-color: #f2f2f2;
            color: #333;
            padding: 8px 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

        .logout-form button:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    
      <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/jobposter"
     user="root"  password=""/>
 
   <sql:query dataSource="${snapshot}" var="result">
    SELECT * FROM job_post
    ORDER BY jobStatus DESC, date DESC;
</sql:query>
    
    
    <header>
        <a href="add_job_post.html">Add New Job</a>
        <form class="logout-form" action="logout.jsp" method="POST">
            <button type="submit">Logout</button>
        </form>
    </header>

    <div class="search-bar">
        <input type="text" id="searchInput" placeholder="Search">
    </div>

    <script src="searchTable.js"></script>

    <main>
        <table id="dataTable">
            <tr>
                <th>Date Posted</th>
                <th>Job Title</th>
                <th>Job Reference</th>
                <th>Closing Date</th>
                <th>Status</th>
                <th>Update</th>
            </tr>
       
            <c:forEach var="row" items="${result.rows}">
                <tr>
                    <td><c:out value="${row.date}"/></td>
                    <td><c:out value="${row.jobTitle}"/></td>
                    <td><c:out value="${row.jobReference}"/></td>
                    <td><c:out value="${row.closing_date}"/></td>
                    <td><c:out value="${row.jobStatus}"/></td>
                    <td><a href="updateJobDescription.jsp?id=<c:out value="${row.id}"/>">Update </a></td>
                </tr>
            </c:forEach>
        </table>
    </main>
</body> 
</html>
