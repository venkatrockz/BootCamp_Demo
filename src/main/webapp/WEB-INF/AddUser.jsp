<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Demo App</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  rel="stylesheet">
</head>
<body>
<div class="container">
<form:form method="post" commandName="user">
    <table class="table table-striped" width="50%">
        <caption>Add New User</caption>
        <tr>
            <td>User Id: </td>
            <td><form:input path="userId"  /></td>
        </tr>
        <tr>
            <td>First Name: </td>
            <td><form:input path="firstName"  /></td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td><form:input path="LastName" /></td>
        </tr>
        <tr>
            <td>Gender :</td>
            <td><form:input path="gender" /></td>
        </tr>
        <tr>
            <td> </td>
            <td>
                    <a class="button" href="/saveUser">
                        <button type="button" class="btn btn-success">
                            <font color="white">Save User</font>
                        </button>
                    </a>
        </tr>
    </table>
</form:form>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</div>
</body>
</html>