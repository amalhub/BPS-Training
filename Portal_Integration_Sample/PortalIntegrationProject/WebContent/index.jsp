<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<!-- bootstrap just to have good looking page -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<!-- we code these -->
<script src="js/functions.js"></script>
<title>Portal Integration</title>
</head>
<body>
<h1 style="text-align:center">Portal Integration<br></h1> 
 
    <!-- article inputs -->
    <div class="article" style="margin:10px;">
        <div class="input-prepend">
            <span class="add-on">Process Definition Key</span>
            <input class="span4" id="processId" name="processId" type="text" placeholder="Process Instance ID">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Account ID</span>
            <input class="span4" id="accountId" name="accountId" type="text" placeholder="Process Instance ID">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Email ID</span>
            <input class="span4" id="email" name="email" type="text" placeholder="Process Instance ID">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Item Name</span>
            <input class="span4" id="item" name="item" type="text" placeholder="Process Instance ID">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Description</span>
            <input class="span4" id="request" name="request" type="text" placeholder="Process Instance ID">
        </div>
        <br/>
        <div >
            <span class="add-on">URL</span>
            <input class="span4" id="url" name="url" type="text" placeholder="http://example.com">
        </div>
        <br/>
        <div class="input-prepend">
            <span class="add-on">Request Type</span>
            <input class="span2" id="requestType" name="requestType" type="text" placeholder="GET">
        </div>
        <br/>
        <p>
            <button class="btn btn-primary" type="button" onclick="sendAjax()">Add</button>
        </p>
    </div>

</body>
</html>