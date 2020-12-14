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

.header {
	background-color: #ffffff;
	color: #ffffff;
	margin: 0px;
	width: 100%;
	margin-bottom: 20px;
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

#about-dockslok-parent {
	color: #5a3b82;
	border-radius: 4px;
	font-family: 'Roboto Condensed', sans-serif;
	font-size: 18px;
}

#about-docslok, h1 {
	font-family: 'Roboto Condensed', sans-serif;
	color: #5a3b82;
	margin: 0px
}

#about-docslok, p {
	font-family: 'Roboto Condensed', sans-serif;
	color: #5a3b82;
	margin-top: 20px;
}

.aside {
	padding: 15px;
	text-align: center;
}

.footer {
	text-align: center;
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
			<a href="/login">Login</a> <a href="/registration">Register</a>
		</div>
	</div>

	<div class="row">
		<div class="col-3 col-s-3 menu">
			<ul>
				<li>Authenticated Documents</li>
				<li>Digital Document Exchange</li>
				<li>Real Time Verification</li>
				<li>Secure Access</li>
				<li>Document Sharing</li>
				<li>Password Protection</li>
			</ul>
		</div>

		<div id="about-dockslok-parent" class="col-6 col-s-9">
			<h1 id="about-docslok">How we're securing your documents?</h1>
			<p id="about-docslok">
				All the documents that you've shared with us will be in completed
				encrypted format and thus only the authorised users will be able to
				access them also the documents can be password protected if you want
				to add a new layer of security to your documents.<br />
				<br /> If you've shared your documents with other users then they
				will also be accessible to your documents along with security
				features requires to access those documents.<br />
				<br /> You can fetch all your documents right from this application
				and can store them in the best possible manner.
			</p>
		</div>

		<div class="col-3 col-s-12">
			<div class="aside">
				<img width="88%"
					src="https://image.shutterstock.com/image-vector/laptop-blank-screen-silver-color-260nw-1382811212.jpg">
			</div>
		</div>
	</div>

	<div class="footer">
		<a href="/about">About</a> <a href="/contact">Contact</a> <a
			href="/support">Support</a> <a href="/report">Report</a>

	</div>

</body>
</html>
