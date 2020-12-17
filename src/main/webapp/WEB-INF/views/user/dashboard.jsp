<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		<p id="alert">${message}</p>
		
		<c:if test="${not empty emailNotVerifiedMessage}">
    		<p id="email-not-verified-message">${emailNotVerifiedMessage}</p>
		</c:if>
		<c:if test="${not empty aadhaarNotUpdated}">
    		<p id="email-not-verified-message">${aadhaarNotUpdated}</p><p id="alert">Click <a href="/app/post-registration">here</a> to update AADHAAR number</p>
		</c:if>
		
	</div>
</body>
</html>
