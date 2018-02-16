<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Demo App</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  rel="stylesheet">
</head>
<body>
<div class="container">
    <table class="table table-striped table-bordered">
        <caption>User's Data</caption>
        <thead>
        <tr>
            <th>User ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Edit/Delete</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.userId}</td>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
                <td>${user.age}</td>
                <td>${user.gender}</td>
                <td>
                    <a class="button" href="/edituser/${user.userId}">
                        <button type="button" class="btn btn-primary">
                            <font color="white">Edit</font>
                        </button>
                    </a>

                    <a class="button" href="/deleteuser/${user.userId}">
                        <button type="button" class="btn btn-danger">
                            <font color="white">Delete</font>
                        </button>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

        <a class="button" href="/addUser">
            <button type="button" class="btn btn-success">
                <font color="white">Add User</font>
            </button>
        </a>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   </div>
</body>
</html>