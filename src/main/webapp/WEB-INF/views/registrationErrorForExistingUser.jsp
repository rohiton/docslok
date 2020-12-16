<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/login.css">
<script>
function registrationErrorAlert(){
	alert("User already exist")
	window.location = "/registration";
}
</script>
<title>Registration Failed</title>
</head>
<body onload="registrationErrorAlert()">
</body>
</html>