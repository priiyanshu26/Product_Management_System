# Product Management System  

## Description  
A web-based application for managing products, built using Java Servlets, JSP, and MySQL. This application allows users to add and view product details through an intuitive interface.

---

## Features  
- **Add Products**: Users can add product details (ID, Name, Price) to the database.  
- **View Products**: Display all stored products in a tabular format.  
- **Responsive Design**: A clean and responsive user interface built using HTML and CSS.  
- **Database Integration**: Persistent storage of product information using MySQL.

---

## Technology Stack  

### Backend  
- **Java Servlets**: For handling server-side logic.  
- **JSP**: For rendering dynamic content in views.  

### Frontend  
- **HTML/CSS**: For building the user interface.  
- **JavaScript (optional)**: For adding dynamic behaviors (if applicable).  

### Database  
- **MySQL**: For storing product information.

---

## Prerequisites  
To run this project locally, ensure you have the following installed:  
- **Java Development Kit (JDK)** (version 8 or higher)  
- **Apache Tomcat Server** (version 9 or higher)  
- **MySQL Server**  
- **IDE** (e.g., Eclipse, IntelliJ IDEA)  

---

## Installation and Setup  

### Clone the Repository  

```bash

git clone https://github.com/priiyanshu26/product-management-system.git
cd product-management-system
```

### Database Setup
- Open MySQL Workbench or any MySQL client.
- Create a database
  ---
```

CREATE DATABASE servlet_productdb;
```
-Use the following schema for the product table
```
CREATE TABLE product (
    productid INT PRIMARY KEY,
    productname VARCHAR(100),
    productprice INT
);
```
---
### Configure Database Connection
- Update the database credentials in the following Java files:

- AddProduct.java
- FindProduct.java
Replace user=root and password=Priyanshu@26 with your MySQL username and password.
---

### Deploy the Application
- Open the project in your IDE.
- Configure the Apache Tomcat server.
- Deploy the project to the server.
  ---

 ### Usage
- Add Products
- Navigate to the Add Product page.
- Enter the product details (ID, Name, Price).
- Click the "Add" button to save the product.
  
---
  
### View Products
- Navigate to the Display Products page.
- View all products in a tabular format.
  ---
