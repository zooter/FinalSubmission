<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Patient Registration</title>
 </head>
<body>
	<script type="text/javascript">
		
		
		$(document).ready(function() {
			 alert('on ready function');
		});

		
		
		 function registerPatient( ) {
			alert('thanks for registering');
			
			
			patientRegistration.patientRegistrationObj.demographics.aadharCardNo = document.getElementById("aadharCardNo").val();
			patientRegistration.patientRegistrationObj.demographics.addressLine1 = document.getElementById("addressLine1").val();
			patientRegistration.patientRegistrationObj.demographics.addressLine2 = document.getElementById("addressLine2").val();
			patientRegistration.patientRegistrationObj.demographics.city = document.getElementById("city").val();
			patientRegistration.patientRegistrationObj.demographics.contactNo = document.getElementById("contactNo").val();
			patientRegistration.patientRegistrationObj.demographics.country= document.getElementById("country").val();
			patientRegistration.patientRegistrationObj.demographics.dob = document.getElementById("dob").val();
			patientRegistration.patientRegistrationObj.demographics.firstName = document.getElementById("firstName").val();
			patientRegistration.patientRegistrationObj.demographics.gender = document.getElementById("gender").val();
			patientRegistration.patientRegistrationObj.demographics.lastNam = document.getElementById("lastNam").val();
			patientRegistration.patientRegistrationObj.demographics.maritalStatus = document.getElementById("maritalStatus").val();
			patientRegistration.patientRegistrationObj.demographics.state = document.getElementById("state").val();
			patientRegistration.patientRegistrationObj.demographics.zipCode = document.getElementById("zipCode").val();

			patientRegistration.patientRegistrationObj.medication.administrationMethod = document.getElementById("administrationMethod").val();
			patientRegistration.patientRegistrationObj.medication.dosage = document.getElementById("dosage").val();
			patientRegistration.patientRegistrationObj.medication.dosageUnit = document.getElementById("dosageUnit").val();
			patientRegistration.patientRegistrationObj.medication.endDate = document.getElementById("endDate").val();
			patientRegistration.patientRegistrationObj.medication.frequency = document.getElementById("frequency").val();
			patientRegistration.patientRegistrationObj.medication.medName = document.getElementById("medName").val();
			patientRegistration.patientRegistrationObj.medication.prescription = document.getElementById("prescription").val();
			patientRegistration.patientRegistrationObj.medication.prescriptionDate = document.getElementById("prescriptionDate").val();
			patientRegistration.patientRegistrationObj.medication.reason = document.getElementById("reason").val();
			patientRegistration.patientRegistrationObj.medication.startDate = document.getElementById("startDate").val();
			patientRegistration.patientRegistrationObj.medication.strength = document.getElementById("strength").val();
			patientRegistration.patientRegistrationObj.medication.strengthUnit = document.getElementById("strengthUnit").val();
			
			patientRegistration.patientRegistrationObj.allergies.allergyName = document.getElementById("allergyName").val();
			patientRegistration.patientRegistrationObj.allergies.firstObservedDate = document.getElementById("firstObservedDate").val();
			patientRegistration.patientRegistrationObj.allergies.reaction = document.getElementById("reaction").val();
			patientRegistration.patientRegistrationObj.allergies.type= document.getElementById("type").val();
			
			patientRegistration.patientRegistrationObj.problems.cancer = document.getElementById("cancer").val();
			patientRegistration.patientRegistrationObj.problems.diabetes = document.getElementById("diabetes").val();
			patientRegistration.patientRegistrationObj.problems.heartDisease = document.getElementById("heartDisease").val();
			patientRegistration.patientRegistrationObj.problems.highBloodPressure = document.getElementById("highBloodPressure").val();
			patientRegistration.patientRegistrationObj.problems.highCholesterolLipid = document.getElementById("highCholesterolLipid").val();
			
			patientRegistration.patientRegistrationObj.problems.administrationMethod = document.getElementById("administrationMethod").val();
			patientRegistration.patientRegistrationObj.problems.adverseEffects = document.getElementById("adverseEffects").val();
			patientRegistration.patientRegistrationObj.problems.dateReceived = document.getElementById("dateReceived").val();
			patientRegistration.patientRegistrationObj.problems.numberInSequence = document.getElementById("numberInSequence").val();
			patientRegistration.patientRegistrationObj.problems.vaccineName = document.getElementById("vaccineName").val();
			
			
			
			
		};

		var patientRegistration = {
					
				

		 			updatePatient : function() {
				var data = "abc";
				var xhrArgs = {
					type : 'POST',
					url : '/xyz',
					data : orderFormReq,
					dataType : data,
					success : patientRegistration.updatePatientSuccess,
					failure : patientRegistration.updatePatientSuccess
				};
				$.ajax(xhrArgs);

			},

			updatePatientSuccess : function(result) {
				var orderId = sppOrder.presentUpdateOrderId;
			},

		};
	</script>
	<div id="mainPatientRegistration">
		<div id="demographic_div" align="center">
			<table>
				<tr>
					<td colspan="4" align="center"><b>Demographics</b></td>
				</tr>
				<tr>
					<td colspan="1">First Name<b style="color: red">*</b>
					<td>
					<td colspan="1"><input type="text" id="firstName" /></td>

					<td colspan="1">Last Name <b style="color: red">*</b>
					<td>
					<td colspan="1"><input type="text" id="lastName" /></td>
				</tr>
				<tr>
					<td>AadharCardNo <b style="color: red">*</b>
					<td>
					<td><input type="text" id="aadharCardNo" /></td>
					<td>DOB
					<td>
					<td><input type="text" id="dob"></td>
				</tr>
				<tr>
					<td>Gender<b style="color: red">*</b>
					<td>
					<td><select name="gender" style="width:100px;">
							<option value="Male">
							<option value="Female">
					</select></td>


					<td>ContactNo
					<td>
					<td><input type="text" id="contactNo" /></td>
				</tr>
				<tr>
					<td>addressLine1<b style="color: red">*</b>
					<td>
					<td><input type="text" id="addressLine1" /></td>
					<td>addressLine2<b style="color: red">*</b>
					<td>
					<td><input type="text" id="addressLine2" /></td>
				</tr>
				<tr>
					<td>city<b style="color: red">*</b>
					<td>
					<td><input type="text" id="city" /></td>
					<td>state<b style="color: red">*</b>
					<td>
					<td><input type="text" id="state" /></td>
				</tr>
				<tr>
					<td>country<b style="color: red">*</b>
					<td>
					<td><input type="text" id="country" /></td>
					<td>zipCode<b style="color: red">*</b>
					<td>
					<td><input type="text" id="zipCode" /></td>
				</tr>
				<tr>
					<td>Marital Status<b style="color: red">*</b>
					<td>
					<td><input type="text" id="maritalStatus" /></td>
				</tr>
			</table>

		</div>
		<div id="problems_div" align="center">
			<table>
				<tr>
					<td colspan="4" align="center"><b>Problems</b></td>
				</tr>
				<tr>
					<td colspan="1">High BloodPressure<b style="color: red">*</b>
					<td>
					<td colspan="1"><input type="text" id="highBloodPressure" /></td>

					<td colspan="1">Heart Disease<b style="color: red">*</b>
					<td>
					<td colspan="1"><input type="text" id="heartDisease" /></td>
				</tr>
				<tr>
					<td>Diabetes <b style="color: red">*</b>
					<td>
					<td><input type="text" id="diabetes" /></td>
					<td>highCholesterolLipid
					<td>
					<td><input type="text" id="highCholesterolLipid"></td>
				</tr>
				<tr>
					<td>cancer<b style="color: red">*</b>
					<td>
					<td><input type="text" id="cancer" /></td>
				</tr>
			</table>

		</div>

		<div id="medication_div" align="center">
			<table>
				<tr>
					<td colspan="4" align="center"><b>Medication</b></td>
				</tr>
				<tr>
					<td colspan="1">Medication Name<b style="color: red">*</b>
					<td>
					<td colspan="1"><input type="text" id="medName" /></td>

					<td colspan="1">Strength<b style="color: red">*</b>
					<td>
					<td colspan="1"><input type="text" id="strength" /></td>
				</tr>
				<tr>
					<td>Strength Unit <b style="color: red">*</b>
					<td>
					<td><input type="text" id="strengthUnit" /></td>
					<td>Dosage
					<td>
					<td><input type="text" id="dosage"></td>
				</tr>
				<tr>
					<td>Dosage Unit<b style="color: red">*</b>
					<td>
					<td><input type="text" id="dosageUnit" /></td>
					<td>Administration Method
					<td>
					<td><input type="text" id="administrationMethod" /></td>
				</tr>
				<tr>
					<td>Frequency<b style="color: red">*</b>
					<td>
					<td><input type="text" id="frequency" /></td>
					<td>Reason<b style="color: red">*</b>
					<td>
					<td><input type="text" id="reason" /></td>
				</tr>
				<tr>
					<td>Start Date<b style="color: red">*</b>
					<td>
					<td><input type="text" id="startDate" /></td>
					<td>End Date<b style="color: red">*</b>
					<td>
					<td><input type="text" id="endDate" /></td>
				</tr>
				<tr>
					<td>Prescription<b style="color: red">*</b>
					<td>
					<td><input type="text" id="prescription" /></td>
					<td>Prescription Date<b style="color: red">*</b>
					<td>
					<td><input type="text" id="prescriptionDate" /></td>
				</tr>

			</table>
		</div>

		<div id="allergies_div" align="center">
			<table>
				<tr>
					<td colspan="4" align="center"><b>Allergies</b></td>
				</tr>
				<tr>
					<td>Allergy Name<b style="color: red">*</b>
					<td>
					<td><input type="text" id="allergyName" /></td>
					<td>Reaction
					<td>
					<td><input type="text" id="reaction" /></td>
				</tr>
				<tr>
					<td>Type<b style="color: red">*</b>
					<td>
					<td><input type="text" id="type" /></td>
					<td>First Observed Date<b style="color: red">*</b>
					<td>
					<td><input type="text" id="firstObservedDate" /></td>
				</tr>
			</table>
		</div>


		<div id="vaccine_div" align="center">
			<table>
				<tr>
					<td colspan="4" align="center"><b>Vaccines</b></td>
				</tr>
				<tr>
					<td>Vaccine name<b style="color: red">*</b>
					<td>
					<td><input type="text" id="vaccinename" /></td>
					<td>DateReceived
					<td>
					<td><input type="text" id="dateReceived" /></td>
				</tr>
				<tr>
					<td>NumberInSequence<b style="color: red">*</b>
					<td>
					<td><input type="text" id="numberInSequence" /></td>
					<td>AdverseEffects<b style="color: red">*</b>
					<td>
					<td><input type="text" id="adverseEffects" /></td>
				</tr>
				<tr>
					<td>AdministrationMethod<b style="color: red">*</b>
					<td>
					<td><input type="text" id="administrationMethod" /></td>
				</tr>
				<tr>
					<td colspan="4" align="center"><input type="button" value="Submit"
						onclick="registerPatient(this)" /></td>
				</tr>
				
			</table>
		</div>

	</div>


</body>
</html>