<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dashboard/uploadDocuments.css">
<title>Upload Documents</title>
<style type="text/css">
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
input[type="submit"]{
    margin-top: 26px;
    background: rgb(15 134 101);
    color: white;
    font-weight: bold;
    border: none;
}
table{
color: black;
    font-family: 'Roboto Condensed', sans-serif;
    font-size:18px;
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
		<h1 class="center-login">Upload Documents</h1>
		<form method="post" action="/app/dashboard/upload-documents/document/upload" enctype="multipart/form-data">
		<table>
		<tr>
		<td>Upload File</td>
		<td><input type="file" name="document"/></td>
		</tr>
		<tr>
		<td>File Name</td>
		<td><input type="text" name="docName"/></td>
		</tr>
		<tr>
		<td>Description (Optional)</td>
		<td><input type="text" name="docDecsription"/></td>
		</tr>
		<tr>
		<td><input type="submit" value="Upload Document"/></td>
		</tr>
		</table>
		</form>
		<p>* You can upload any kind of file</p>
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
