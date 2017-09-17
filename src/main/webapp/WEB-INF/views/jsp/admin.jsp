<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%
    String id = request.getParameter("userId");
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "linksharing";
    String userId = "root";
    String password = "aditya";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<%@include file="Header1.jsp" %>

<div class="container">
    <h2>Admin Table </h2>
    <table id="sort" class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>UserName</th>
            <th>Email</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Admin</th>
            <th>EDIT</th>
            <th>DELETE</th>


        </tr>
        </thead>
        <%
            try {
                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                statement = connection.createStatement();

                String sql = "SELECT * FROM user";

                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
        %>

        <tbody>
        <tr>


            <td><%=resultSet.getString("id") %>
            </td>
            <td><%=resultSet.getString("userName") %>
            </td>
            <td><%=resultSet.getString("email") %>
            </td>
            <td><%=resultSet.getString("firstName") %>
            </td>
            <td><%=resultSet.getString("lastName") %>
            </td>
            <td><%=resultSet.getString("admin") %>
            </td>
            <td><a href="#/<%=resultSet.getString("id") %>">Edit</a></td>
            <td><a href="#/<%=resultSet.getString("id") %>">Delete</a></td>


        </tr>
        </tbody>

        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>


    <!------------------------------------------------------------------------------------->


</div>