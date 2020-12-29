<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard/updateProfile.css">
<title>Update Profile</title>
<style>

table {
    width: 100%;
    font-size:18px;
}
input {
border-radius: 3px;
    font-size: 18px;
    padding: 5px;
    font-family: 'Roboto Condensed', sans-serif;
    border: 1px solid black;
    margin-top: 5px;
    width: 231px;
    margin-bottom:20px;
}
input:disabled {
    background: rgb(243 245 245);
}
input[type="submit"]{
    margin-top: 26px;
    background: rgb(15 134 101);
    color: white;
    font-weight: bold;
    border: none;
}
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
		<h1 class="center-login" id="center-header">Update Profile</h1>
		
		<form method="POST" action="/app/dashboard/update-profile">
		<table>
			<tr>
				<td><label>User ID</label><br/><input type="number" name="userId" disabled value="${user.userId}"></td>
				<td><label>Aadhaar Number</label><br/><input type="number" name="aadhaarNo" disabled  value="${user.aadhaarNo}"/></td>
				<td><label>Account Status</label><br/><input type="text" name="accountStatus" disabled  value="${user.accountStatus}"/></td>
			</tr>
			<tr>	
				<td><label>Username</label><br/><input type="text" name="username" disabled value="${user.username}"/></td>
				<td><label>Firstname</label><br/><input  type="text" name="firstName" value="${user.firstName}"/></td>
				<td><label>Lastname</label><br/><input type="text" name="lastName" value="${user.lastName}"/></td>
			</tr>
			<tr>
				<td><label>Email</label><br/><input type="text" name="email" disabled value="${user.email}"/></td>
				<td><label>Secret Pin</label><br/><input type="number" name="secretPin" value="${user.secretPin}"/></td>
			</tr>
			<tr>
				<td><input style="margin-top: 26px;" type="submit" name="submit" value="Update Profile"></td>
			</tr>
			</table>
			<p>* You can only change your firstname, lastname and secret pin</p>
			<p>* For additional help, raise a ticket <a href="/app/dashboard/manage-account/raise-ticket">here</a></p>
		</form>
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
