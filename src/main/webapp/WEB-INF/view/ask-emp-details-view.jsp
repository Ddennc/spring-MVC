<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--@elvariable id="employee" type="com.rov.spring.mvc.Employee"--%>
<!DOCTYPE html>
<html>
<body>
<h2>Please,enter your details</h2>
<br>
<br>
<%--<form action = "showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--    placeholder="Write your name"/>--%>
<%--    <input type="submit" />--%>
    <form:form action="showDetails" modelAttribute="employee">
        Name <form:input path="name"/>
        <form:errors path="name"/> 
        <br> <br>
        Surname <form:input path="surname"/>
        <form:errors path="surname"/>
        <br> <br>
         Salary <form:input path="salary"/>
        <form:errors path="salary"/>
        <br> <br>
        Department <form:select path="department">
<%--        <form:option value="Infornation Technologie" label="IT"/>--%>
<%--        <form:option value="Human Resources" label="HR"/>--%>
<%--        <form:option value="Sales" label="Sales"/>--%>
        <form:options items="${employee.departments}"/>
    </form:select>
        <br> <br>
        Which car do you want?
<%--         BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--        Mercedes <form:radiobutton path="carBrand" value="Mercedes"/>--%>
<%--        Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
        <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
        <br> <br>
        Foreign Language(s)
<%--        EN <form:checkbox path="languages" value="English"/>--%>
<%--        FR <form:checkbox path="languages" value="French"/>--%>
<%--        DE <form:checkbox path="languages" value="Deutch"/>--%>
        <form:checkboxes path="languages" items="${employee.languageList}"/>
        <br> <br>
        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br> <br>
        Email <form:input path="email"/>
        <form:errors path="email"/>

        <br> <br>
        <input type="submit" name="OK"/>
    </form:form>
    


</body>


</html>