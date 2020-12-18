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
    border: 4px solid rgb(15 134 101);
    border-radius: 5px;
    padding: 50px;
    font-size:20px;
}
input {
    /* text-align: center; */
    font-size: 20px;
    width: 251px;
    height: 40px;
    border: 3px solid;
    padding: 5px;
    font-family: 'Roboto Condensed', sans-serif;
    /* color: white; */
    /* background: rgb(15 134 101); */
    border: none;
    border: 3px solid rgb(15 134 101);
}
input:disabled{
background: #e7e3e3;
    color: black;}
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
				<td><label>User ID</label></td>
				<td><input type="number" name="userId"/ disabled value="${user.userId}"></td>
			</tr>
			<tr>
				<td><label>Firstname</label></td>
				<td><input type="text" name="firstName" value="${user.firstName}"/></td>
			</tr>
			<tr>
				<td><label>Lastname</label></td>
				<td><input type="text" name="lastName" value="${user.lastName}"/></td>
			</tr>
			<tr>
				<td><label>Username</label></td>
				<td><input type="text" name="username" value="${user.username}"/></td>
			</tr>
			<tr>
				<td><label>Email</label></td>
				<td><input type="text" name="email" value="${user.email}"/></td>
			</tr>
			<tr>
				<td><label>Password</label></td>
				<td><input type="text" name="password" value="${user.password}"/></td>
			</tr>
			<tr>
				<td><label>Aadhaar Number</label></td>
				<td><input type="number" name="aadhaarNo" disabled  value="${user.aadhaarNo}"/></td>
			</tr>
			<tr>
				<td><label>Secret Pin</label></td>
				<td><input type="number" name="secretPin" value="${user.secretPin}"/></td>
			</tr>
			<tr>
				<td><label>Account Status</label></td>
				<td><input type="text" name="accountStatus" disabled  value="${user.accountStatus}"/></td>
			</tr>
<%-- 			<tr>
				<td><label>Is Email Verified</label></td>
				<td><input type="text" name="isEmailVerified" value="${user.isEmailVerified}"/></td>
			</tr> --%>
<%-- 			<tr>
				<td><label>Is Account Ative</label></td>
				<td><input type="text" name="isActive" value="${user.isActive}"></td>
			</tr> --%>
			<tr>
				<td><input style="margin-top: 26px;" type="submit" name="submit" value="Update Profile"></td>
			</tr>
			</table>
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
