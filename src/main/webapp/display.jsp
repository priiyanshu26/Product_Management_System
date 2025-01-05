<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* General Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f8f9fa;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding-top: 20px;
}

/* Table Styles */
table {
    width: 80%;
    max-width: 900px;
    margin-top: 20px;
    border-collapse: collapse;
    background-color: #ffffff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

thead {
    background-color: #3e638a;
    color: #fff;
}

thead td {
    padding: 10px;
    font-size: 1.1em;
    font-weight: bold;
    text-align: center;
    border: 1px solid #ddd;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

tbody tr:hover {
    background-color: #e9ecef;
}

tbody td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: center;
    font-size: 1em;
}

/* Headings */
h1 {
    text-align: center;
    color: #007BFF;
    font-size: 2em;
    margin-bottom: 20px;
}
</style>
</head>
<body>
    <%
    List<Map<String, Object>> result = (List<Map<String, Object>>) request.getAttribute("list");
    %> 
    <table border="1px">
        <thead>
            <tr>
                <td>Product ID</td>
                <td>Product Name</td>
                <td>Product Price</td>
            </tr>
        </thead>
        <tbody>
            <%
            for (Map<String, Object> product : result) {
            %>
            <tr>
                <td><%=product.get("productid") %></td>
                <td><%=product.get("productname") %></td>
                <td><%=product.get("productprice") %></td>
            </tr>
            <%} %>
        </tbody>
    </table>
</body>
</html>
