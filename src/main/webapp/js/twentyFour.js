/**
 * 
 */

var twentyFour= {
		
		
};

var loginForm = {
		
		
};



var Allergies = {
		
		
};

var Demographics = {
		
		
};


var Medication = {
		
		
};

var Problems = {
		
		
};

var Vaccine = {
		
		
};








var patientRegistration = {
		
		
		 
			
		 
		
		
		registerPatient:function(){
			alert('thanks for registaring');
		},
		
		
		
		
		createPatientJson:function(){
				
			
			patientRegistration.patientRegistrationObj = {
					"demographics" : {
						"aadharCardNo":"",
						 "addressLine1":"",
						 "addressLine2":"",
						 "city":"",
						 "contactNo":"",
						 "country":"",
						 "dob":"",
						 "firstName":"",
						 "gender":"",
						 "lastNam":"",
						 "maritalStatus":"",
						 "state":"",
						 "zipCode":""
					},
					"medication" : {
						"administrationMethod":"",
						 "dosage":"",
						 "dosageUnit":"",
						 "endDate":"",
						 "frequency":"",
						 "medName":"",
						 "prescription":"",
						 "prescriptionDate":"",
						 "reason":"",
						 "startDate":"",
						 "strength":"",
						 "strengthUnit":""
 					},
					"allergies" : {
						"allergyName":"",
						 "firstObservedDate":"",
						 "reaction":"",
						 "type":""
					},
					"problems" : {
						"cancer":"",
						 "diabetes":"",
						 "heartDisease":"",
						 "highBloodPressure":"",
						 "highCholesterolLipid":""
					},
					"vaccine" : {
						"administrationMethod":"",
						 "adverseEffects":"",
						 "dateReceived":"",
						 "numberInSequence":"",
						 "vaccineName":""
					},
					 
				};
			
			
		},
		
		
		updatePatient:function(){
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
		
		updatePatientSuccess:function(result){
			var orderId=sppOrder.presentUpdateOrderId;
		},
		
		
		
		
		
};