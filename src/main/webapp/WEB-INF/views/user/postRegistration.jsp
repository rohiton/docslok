<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/postRegistration.css">
<title>Register on docslok</title>
<script>
function validateForm() {
	var username = document.getElementById("username").value;
	var aadhaarNo = document.getElementById("aadhaarNo").value;
	var secretPin = document.getElementById("secretPin").value;

	if (username == "") {
	    alert("Username can't be empty");
	    return false;
	}
	if (aadhaarNo == "") {
	    alert("Aadhaar number can't be empty");
	    return false;
	}
	if (aadhaarNo.length!=12){
	    alert("Aadhaar number should be of 12 digits only");
	    return false;	
	}
	if (secretPin == "") {
	    alert("Secret pin can't be empty");
	    return false;
	}
	if(secretPin.length!=6){
	    alert("Secret pin should be of 6 digits only");
	    return false;
	}
}
</script>
</head>
<body>
	<div class="header">
		<h1>docslok</h1>
		<p>Securing your documents</p>
	</div>

	<div class="row">
		<div class="col-3 col-s-3 menu">
			<ul>
				<li>Digital Online Account</li>
				<li>Document Sharing & Exchanging</li>
				<li>Digital Document Signing</li>
				<li>Highly Encrypted Documents</li>
			</ul>
		</div>

		<div id="center-registration" class="col-6 col-s-9">
			<h2 class="center-registration">Update Aadhaar Number & Secret PIN</h2>
			<p>To make your account secure, you need to provide the aadhaar number along with a secret pin that will be used to verify 
			your authenticity under certain steps.
			<br />
			<div>
				<div>
					<div>
						<form action="/app/post-registration" method="post" onsubmit="return validateForm()">
							<div>
							<input id="username" type="text" minlength="6" maxlength="10" name="username"
									placeholder="Username" /> 
								<input id="aadhaarNo" type="number" name="aadhaarNo"
									placeholder="Aadhaar Number" /> 
							</div>
							<div>
								<input id="secretPin" type="number" name="secretPin" placeholder="6 Digit Secret Pin" />
							</div>
							<div>
								<button id="registration-button" class="registration-button"
									name="Register" type="Submit">Update My Account</button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
		<div class="col-3 col-s-12">
			<div class="right-div">
				<img width="88%" src="images/image.jpg">
			</div>
		</div>
	</div>

	<div class="footer" id="footer">
		<h1>docslok</h1>
		<p>Securing your documents</p>
	</div>
</body>
</html>