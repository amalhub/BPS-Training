function sendAjax() {
 
    // get inputs
    var processId = $('#processId').val();
    var requestVariables = $('#variables').val();
    var url = $('#url').val();
    var requestType = $('#requestType').val();
    var emailId = $('#email').val();
    var accountId = $('#accountId').val();
    var itemId = $('#item').val();
    var description = $('#request').val();
 
    if (requestType == "GET") {
    	$.ajax({
            url: url,
            beforeSend: function (xhr) {
                xhr.setRequestHeader ("Authorization", "Basic " + btoa("admin:admin"));
                xhr.setRequestHeader ("Accpet", "application/json");
                xhr.setRequestHeader ("Access-Control-Allow-Origin", "*");
            },
            type: requestType,
            dataType: 'json',
            contentType: 'application/json',
            success: function (data) { 
                alert(data);
            },
            error:function(data,status,er) {
                alert("error: "+data+" status: "+status+" er:"+er);
            }
        });
    } else if (requestType == "POST") {
		var model = {
				processDefinitionKey: processId,
				"tenantId": "-1234",
				variables: [{ name:"accountId" , "value" : accountId }, {"name":"email" , "value" : emailId}, { name:"item" , "value" : itemId}, {"name":"request" , "value" : description}]
			};
    	$.ajax({
            url: url,
            beforeSend: function (xhr) {
                xhr.setRequestHeader ("Authorization", "Basic " + btoa("admin:admin"));
                xhr.setRequestHeader ("Accpet", "application/json");
                xhr.setRequestHeader ("Access-Control-Allow-Origin", "*");
            },
            type: requestType,
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify(model),
            success: function (data) { 
                //alert("Instance ID: "+data.id+" processDefinitionId : "+data.processDefinitionId);
            	alert(data);
            },
            error:function(data,status,er) {
                alert("error: "+data+" status: "+status+" er:"+er);
            }
        });
    }
    
}