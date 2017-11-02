<%--
  Created by IntelliJ IDEA.
  User: fsuser
  Date: 2017-11-02
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Employee Form</title>
</head>
<body>
<div id="global">
    <form:form commandName="employee" action="employee_save" method="post">
        <fieldset>
            <legend>Add and employee</legend>
            <p>
                <label for="firstName">First Name:</label>
                <form:input path="firstName" tabindex="1"></form:input>
            </p>
            <p>
                <label for="lastName">Last Name:</label>
                <form:input path="lastName" tabindex="2"></form:input>
            </p>
            <p>
                <form:errors path="birthDate" />
            </p>
            <p>
                <label for="birthDate">Date of Birth:</label>
                <form:input path="birthDate" tabindex="3"></form:input>
            </p>
            <p id="buttons">
                <input id="reset" type="reset" tabindex="4">
                <input id="submit" type="submit" tabindex="5" value="Add Employee">
            </p>
        </fieldset>
    </form:form>
</div>
</body>
</html>
