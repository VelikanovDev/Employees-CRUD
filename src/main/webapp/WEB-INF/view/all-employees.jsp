<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>

<body>
<section>
    <h1>All Employees</h1>

    <input class="addBtn" type="button" value="Add Employee" onclick="window.location.href = 'addNewEmployee' "/>

    <table>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Age</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Operations</th>
        </tr>

        <c:forEach var="employee" items="${allEmps}">

            <c:url var="updateButton" value="/updateInfo">
                <c:param name="empID" value="${employee.id}"/>
            </c:url>

            <c:url var="deleteButton" value="/deleteEmployee">
                <c:param name="empID" value="${employee.id}"/>
            </c:url>

            <tr>
                <td>${employee.name}</td>
                <td>${employee.surname}</td>
                <td>${employee.age}</td>
                <td>${employee.department}</td>
                <td>${employee.salary}</td>
                <td>
                    <input type="button" value="Update" onclick="window.location.href = '${updateButton}'"/>
                    <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}'"/>
                </td>
            </tr>
        </c:forEach>


    </table>
</section>


</body>
</html>