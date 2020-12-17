<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/login.css">
<title>Login to docslok</title>
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

		<div id="center-login" class="col-6 col-s-9">
			<h2 class="center-login">Login to docslok</h2>
			<br />
			<div>
				<form action="/app/login" method="POST">
					<input id="input" type="text" id="username" name="username"
						placeholder="Username" /> <br /> <input id="input"
						type="password" placeholder="Password" id="password"
						name="password" /> <br />
					<button class="login-button" name="Login" type="Submit">Login</button>
				</form>
			</div>
		</div>

		<div class="col-3 col-s-3 menu">
			<ul>
				<li>Free Storage upto 10MB</li>
				<li>Security Alerts</li>
				<li>Access from anywhere</li>
				<li>Document Conversion</li>
			</ul>
		</div>
	</div>

	<div class="footer" id="footer">
		<h1>docslok</h1>
		<p>Securing your documents</p>
	</div>
</body>
</html>