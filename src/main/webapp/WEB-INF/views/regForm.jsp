<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Form</title>
</head>
<body>
<script type="text/javascript" src="js/twentyFour.js"></script>
<div align="center" id="patientEnrollment">
		<h3>Patient Enrollment</h3>
		
<form:form method="post" action="/hack/registerPatient">
   <table>
    <tr>
        <td>First Name </td>
        <td><form:input path="firstName" /></td>
        <td>Last Name </td>
        <td><form:input path="lastName" /></td>
    </tr>
    <tr>
        <td>DOB</td>
        <td><form:input path="dob" /></td>
        <td>Email </td>
        <td><form:input path="email" /></td>
    </tr>
    <tr>
        <td>Date </td>
        <td><form:input path="date" /></td>
        <td>Mobile </td>
        <td><form:input path="mobile" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Register"/>
        </td>
    </tr>
</table>  
</form:form>


		<%-- <form action="/hack/registerPatient" method="post">
			<table>
				<tr>
					<td colspan="1">First Name<b style="color: red">*</b><td>
					<td colspan="1"><input type="text" id="patFname" /></td>
					 
					<td colspan="1">Last Name <b style="color: red">*</b><td>
					<td colspan="1"><input type="text" id="patLname" /></td>
 				</tr>
				<tr>
					<td>DOB <b style="color: red">*</b><td>
					<td><input type="text" id="patdob" /></td>
 					<td>Email<td>
					<td><input type="text" id="patEmail"></td>
				</tr>
				<tr>
					<td>Mobile<b style="color: red">*</b><td>
					<td><input type="text" id="patdob" /></td>
					<td>Aadhar#<td>
					<td><input type="text" id="patpin" /></td>
				</tr>
				<tr>
					<td>Password<b style="color: red">*</b><td>
					<td><input type="password" id="patadd1" /> </td>
					<td>Confirm Password<b style="color: red">*</b><td>
					<td><input type="password" id="patadd2" /></td>
				</tr>
				<tr><input type="submit" value="Register" /></tr>
 			</table>
 		</form>	 --%>	
 		
		</div>
</body>
</html>