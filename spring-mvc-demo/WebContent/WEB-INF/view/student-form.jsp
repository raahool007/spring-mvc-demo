<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
	<title>Student Registration Form</title>
</head>
<body>
	<form:form action="processForm" modelAttribute="student">
	First name: <form:input path="firstName"/> <!-- firstName is the property of Student Class -->
	<br><br>
	Last name: <form:input path="lastName"/> <!-- lastName is the property of Student Class -->
	<br><br>
	Country:
	<form:select path="country"> 
    	<form:options items="${theCountryOptions}" />
    </form:select>
    <br><br>
    Favorite Language:
    Java<form:radiobutton path="favoriteLanguage" value="Java"/>
    Erlang<form:radiobutton path="favoriteLanguage" value="Erlang"/>
    C#<form:radiobutton path="favoriteLanguage" value="C#"/>
    Python<form:radiobutton path="favoriteLanguage" value="Python"/>
	
	<br><br>
	Operating Systems:
	Linux<form:checkbox path="operatingSystems" value="Linux"/>
	Unix<form:checkbox path="operatingSystems" value="Unix"/>
	Mac OS<form:checkbox path="operatingSystems" value="Mac OS"/>
	
	<br><br>
	<input type="submit" value="Submit">
	</form:form>
	
	
</body>
</html>