<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/registration.css">
<title>Register on docslok</title>
</head>
<body>
	<div class="header">
		<h1>docslok</h1>
		<p>Securing your documents</p>

		<div class="header-links">
			<a href="/app">Home</a> 
			<a href="/app/login">Login</a> 
			<a href="/app/registration">Register</a> 
			<a href="/app/about-docslok">About</a> 
			<a href="/app/contact-docslok">Contact</a>
		</div>
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
			<h2 class="center-registration">Register on docslok</h2>
			<p class="center-registration">Provide a few information about yourself to get started with your docslok account</p>
			<br />
			<div>
				<div>
					<div>
						<form action="/app/registration" method="post">
							<div>
								<input id="input" type="text" name="firstName"
									placeholder="Firstname" /> <input id="input" type="text"
									name="lastName" placeholder="Lastname" />
							</div>
							<div>
								<input id="input" type="email" name="email" placeholder="Email" />
								<input id="input" type="text" name="username"
									placeholder="Username" />
							</div>
							<div>
								<input id="input" type="password" name="password"
									placeholder="Password" />
								<p><input id="accept-checkbox" type="checkbox" name="accept-checkbox" />I want to create an account</p>
							</div>

							<div>
								<button id="registration-button" class="registration-button"
									name="Register" type="Submit">Register</button>
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