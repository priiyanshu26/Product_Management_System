<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f8f9fa;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    text-align: center;
    background: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 320px;
}

h1 {
    font-size: 2em;
    color: #3e638a;
    margin-bottom: 20px;
}

form input[type="number"],
form input[type="text"] {
    width: calc(100% - 20px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1em;
    box-sizing: border-box;
}

form input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #3e638a;
    color: #ffffff;
    border: none;
    border-radius: 4px;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

form input[type="submit"]:hover {
    background-color: #0056b3;
}

form input::placeholder {
    color: #aaa;
}
</style>
</head>
<body>
<div class="container">
    <h1>ADD THE DETAILS</h1>
    <form action="add-product" method="post">
        <input type="number" placeholder="Enter the product ID" name="productid"><br>
        <input type="text" placeholder="Enter the product name" name="productname"><br>
        <input type="number" placeholder="Enter the product price" name="productprice"><br>
        <input type="submit" value="ADD"><br>
    </form>
</div>
</body>
</html>
