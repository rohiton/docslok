<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard/manageAccount.css">
<title>Manage Account</title>
<style>
</style>
</head>
<body>

	<div class="header">
		<h1>docslok</h1>
		<p>Securing your documents</p>

		<div class="header-links">
			<a href="/app/dashboard">Dashboard</a>
			<a href="/app/logout">Logout</a>
		</div>
	</div>

	<div class="row">
		<div class="col-3 col-s-3 menu">
			<ul>
				<li><a href="/app/dashboard/issued-documents">Issued Documents</a></li>
				<li><a href="/app/dashboard/upload-documents">Upload Documents</a></li>
				<li><a href="/app/dashboard/shared-documents">Shared Documents</a></li>
				<li><a href="/app/dashboard/my-activities">My Activities</a></li>
			</ul>
		</div>
		
	<div id="center-login" class="col-6 col-s-9">
		<h1 class="center-login" id="center-header">Manage Account</h1>
		<p class="center-login">Your current Account status is ${user.accountStatus}</p>
		<p class="center-login">To delete your account permanently, click <a href="/app/dashboard/manage-account/account-delete">here</a></p>
		<p class="center-login">To deactivate your account, click <a href="/app/dashboard/manage-account/account-deactivate">here</a></p>
	</div>
	
		<div class="col-3 col-s-3 menu">
			<ul>
				<li><a href="/app/dashboard/convert-documents">Convert Documents</a></li>
				<li><a href="/app/dashboard/update-profile">Update Profile</a></li>
				<li><a href="/app/dashboard/manage-account">Manage Account</a></li>
				<li><a href="/app/dashboard/storage-info">Storage Info</a></li>
			</ul>
		</div>
	</div>
	
</body>
</html>
