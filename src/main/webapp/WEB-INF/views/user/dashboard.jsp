<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/user/dashboard.css">
<title>Dashboard</title>
</head>
<body>

	<div class="header">
		<h1>docslok</h1>
		<p>Securing your documents</p>

		<div class="header-links">
			<a href="/app/logout">Logout</a>
		</div>
	</div>

	<div id="center-login" class="col-6 col-s-9">
		<h1 class="center-login">Welcome to docslok</h1>
		<p id="email-not-verified-message">${emailNotVerifiedMessage}</p>
		<p id="alert">${message}</p>
	</div>
</body>
</html>
