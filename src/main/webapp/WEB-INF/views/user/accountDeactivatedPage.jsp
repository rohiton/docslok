<html>
<head>
<script>
function alert(){
	alert("Your account is deactivated. Redirecting to login page.")
	window.location.replace("/app/login");
}
</script>
</head>
<body onload="alert()">
</body>
</html>