<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap"
	rel="stylesheet">

<style>
* {
	box-sizing: border-box;
}

.row::after {
	content: "";
	clear: both;
	display: table;
}

[class*="col-"] {
	float: left;
	padding: 15px;
}

html {
	font-family: "Lucida Sans", sans-serif;
}

.header h1 {
	color: #5a3b82;
	font-family: 'Yanone Kaffeesatz', sans-serif;
	font-size: 40px;
	padding-left: 15px;
	padding-top: 5px;
	margin-bottom: 0px;
}

.header p {
	font-family: 'Yanone Kaffeesatz', sans-serif;
	color: #5a3b82;
	padding-left: 15px;
	font-size: 22px;
	font-weight: bold;
	margin-top: 2px;
}

.header-links a {
	font-family: 'Yanone Kaffeesatz', sans-serif;
	color: #5a3b82;
	padding-left: 15px;
	font-size: 20px;
	font-weight: bold;
	margin-top: 2px;
	text-decoration: none;
}

.registration-button {
	font-family: 'Roboto Condensed';
	/* padding: 10px; */
	background: #5a3b82;
	color: white;
	font-weight: bold;
	font-size: 18px;
	border-radius: 18px;
	border: none;
	height: 36px;
	width: 90px;
	margin-top: 15px;
	margin-bottom: 15px;
}

#input {
	padding: 8px;
	margin-top: 4px;
	margin-bottom: 4px;
	font-family: 'Roboto Condensed';
	font-size: 18px;
	margin-right: 8px;
}

.header {
	background-color: #ffffff;
	color: #ffffff;
	margin: 0px;
	width: 100%;
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.menu li {
	padding: 10px;
	margin-bottom: 7px;
	font-family: 'Roboto Condensed', sans-serif;
	border-radius: 4px;
	background-color: #5a3b82;
	color: #ffffff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.menu li:hover {
	background-color: #412961;
}

#registration-parent {
	margin-top: 16px;
	color: #5a3b82;
}

h1 {
	font-family: 'Roboto Condensed', sans-serif;
	color: #5a3b82;
	font-size: 30px;
}

.aside {
	background-color: #5a3b82;
	padding: 15px;
	color: #ffffff;
	text-align: center;
	border-radius: 4px;
	font-family: 'Roboto Condensed', sans-serif;
	font-size: 14px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.footer {
	font-family: 'Roboto Condensed', sans-serif;
	font-size: 18px;
	padding: 15px;
}

.footer a {
	color: #5a3b82;
	text-decoration: none;
	padding: 5px;
}

/* For mobile phones: */
[class*="col-"] {
	width: 100%;
}

@media only screen and (min-width: 600px) {
	/* For tablets: */
	.col-s-1 {
		width: 8.33%;
	}
	.col-s-2 {
		width: 16.66%;
	}
	.col-s-3 {
		width: 25%;
	}
	.col-s-4 {
		width: 33.33%;
	}
	.col-s-5 {
		width: 41.66%;
	}
	.col-s-6 {
		width: 50%;
	}
	.col-s-7 {
		width: 58.33%;
	}
	.col-s-8 {
		width: 66.66%;
	}
	.col-s-9 {
		width: 75%;
	}
	.col-s-10 {
		width: 83.33%;
	}
	.col-s-11 {
		width: 91.66%;
	}
	.col-s-12 {
		width: 100%;
	}
}

@media only screen and (min-width: 768px) {
	/* For desktop: */
	.col-1 {
		width: 8.33%;
	}
	.col-2 {
		width: 16.66%;
	}
	.col-3 {
		width: 25%;
	}
	.col-4 {
		width: 33.33%;
	}
	.col-5 {
		width: 41.66%;
	}
	.col-6 {
		width: 50%;
	}
	.col-7 {
		width: 58.33%;
	}
	.col-8 {
		width: 66.66%;
	}
	.col-9 {
		width: 75%;
	}
	.col-10 {
		width: 83.33%;
	}
	.col-11 {
		width: 91.66%;
	}
	.col-12 {
		width: 100%;
	}
}
</style>
</head>
<body>

	<div class="header">
		<h1>docslok</h1>
		<p>Securing your documents</p>

		<div class="header-links">
			<a href="/login">Login</a>
		</div>
	</div>

	<div id="registration-parent" class="col-6 col-s-9">
		<h1 class="registration-parent">Register on docslok</h1>

		<div>
			<div>
				<div>
					<form action="/registration" method="post">
						<div style="float: left;">
							<input id="input" type="text" name="firstname"
								placeholder="Firstname" />
						</div>
						<div>
							<input id="input" type="text" name="lastname"
								placeholder="Lastname" />
						</div>
						<div style="float: left;">
							<input id="input" type="email" name="email" placeholder="Email" />
						</div>
						<div>
							<input id="input" type="text" name="username"
								placeholder="Username" />
						</div>
						<div>
							<input id="input" type="password" name="password"
								placeholder="Password" />
						</div>
						<div>
							<table>
								<tr>
									<td><input id="terms-accept" type="checkbox" name="terms" /></td>
									<td><p>Accept terms and conditions</p></td>
								</tr>
							</table>

						</div>

						<div>
							<button class="registration-button" name="Register" type="Submit">Register</button>
						</div>

					</form>
				</div>
			</div>
		</div>

		<div class="footer">
			<a href="/about">About</a> <a href="/contact">Contact</a> <a
				href="/support">Support</a> <a href="/report">Report</a>

		</div>
	</div>

</body>
</html>
