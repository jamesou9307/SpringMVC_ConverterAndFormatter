<%--
  Created by IntelliJ IDEA.
  User: fsuser
  Date: 2017-11-02
  Time: 15:21
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
</head>
<body>
<c:out value="${employee.firstName}"></c:out>
<c:out value="${employee.lastName}"></c:out>
<c:out value="${employee.birthDate}"></c:out>
</body>
</html>
