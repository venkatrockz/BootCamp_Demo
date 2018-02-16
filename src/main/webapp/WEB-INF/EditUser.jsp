<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
    <title>Demo App</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  rel="stylesheet">
</head>
<body>
<div class="container">
    <form:form method="post" commandName="user">
        <form:hidden path="userId" />
        <fieldset class="form-group">
            <form:label path="firstName">First Name</form:label>
            <form:input path="firstName" type="text" class="form-control"
                        required="required" />
        </fieldset>
        <button type="submit" class="btn btn-success">Update</button>
    </form:form>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</div>
</body>
</html>