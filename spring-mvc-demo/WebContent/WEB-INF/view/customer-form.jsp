<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<title>Customer Registration Form</title>
		<style>
			.error {color:purple}
		</style>
	</head>
	<body>
		<form:form action="processForm" modelAttribute="customer">
			First Name: <form:input path="firstName"/>
			<br><br>
			Last Name(*): <form:input path="lastName"/>
			<form:errors path="lastName" cssClass="error"></form:errors>
			
			<br><br>
			<input type="submit" value="Submit">		 
		</form:form>
	</body>
</html>