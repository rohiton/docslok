<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/post-registration.css">
<title>Register on docslok</title>
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
						<form action="/app/post-register" method="post">
							<div>
							<input id="input" type="text" name="username"
									placeholder="Username" /> 
								<input id="input" type="text" name="aadhaar_no"
									placeholder="Aadhaar Number" /> 
							</div>
							<div>
								<input id="input" type="text" name="secret_pin" placeholder="6 Digit Secret Pin" />
							</div>
							<div>
								<button id="registration-button" class="registration-button"
									name="Register" type="Submit">Create Account</button>
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