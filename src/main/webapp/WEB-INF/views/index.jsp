<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yanone+Kaffeesatz:wght@300&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed&display=swap" rel="stylesheet">
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

.header h1{
color:#5a3b82;
font-family: 'Yanone Kaffeesatz', sans-serif;
font-size:40px;
padding-left:15px;
padding-top:5px;
margin-bottom:0px;
}

.header p{
font-family: 'Yanone Kaffeesatz', sans-serif;
color:#5a3b82;
padding-left:15px;
font-size:22px;
font-weight:bold;
margin-top:2px;}


.footer h1{
font-family: 'Yanone Kaffeesatz', sans-serif;
font-size:50px;
padding-left:15px;
padding-top:40px;
margin-bottom:0px;
text-align:center;
color:#d5d5d5;
}

.footer p{
font-family: 'Yanone Kaffeesatz', sans-serif;
color:#d5d5d5;
padding-left:15px;
font-size:22px;
font-weight:bold;
text-align:center;
margin-top:2px;}

.header-links a{
font-family: 'Roboto Condensed', sans-serif;
color:#5a3b82;
padding-left:15px;
font-size:18px;
font-weight:bold;
margin-top:2px;
text-decoration:none;
}


.header {
  background-color: #ffffff;
  color: #ffffff;
  margin:0px;
  width:100%;
  margin-bottom:20px;
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
border-radius:4px;
  background-color: #5a3b82;
  color: #ffffff;
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
}

.menu li:hover {
  background-color: #412961;
}

#about-dockslok-parent{
  color: #5a3b82;
  border-radius:4px;
  font-family: 'Roboto Condensed', sans-serif;
	font-size:18px;
}

#about-docslok,h1{
font-family: 'Roboto Condensed', sans-serif;
  color: #5a3b82;
  margin:0px
}
#about-docslok,p{
font-family: 'Roboto Condensed', sans-serif;
  color: #5a3b82;
}

.aside {
  padding: 15px;
  text-align: center;
}

.footer {
font-family: 'Roboto Condensed', sans-serif;
  font-size: 18px;
  padding: 15px;
	height:200px;
	
}

f1{
color:white;

}


.footer a{
  color: #5a3b82;
    text-decoration:none;   
    padding:5px;

}


/* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}
</style>
</head>
<body>

<div class="header">
  <h1>docslok</h1>
  <p>Securing your documents</p>

  <div class="header-links">
  <a href="/app">Home</a>
  <a href="/app/login">Login</a>
  <a href="/app/register">Register</a>
  <a href="/app/about">About</a>
  <a href="/app/contact">Contact</a>
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

  <div id="about-dockslok-parent" class="col-6 col-s-9">
    <h1 id="about-docslok">How we're securing your documents?</h1><br/>
    <p id="about-docslok">
    Your documents safety is our first priority and hence with docslok you can secure your confidential information in form of documents
    in the most easiest and safest way. All your documents are in highly encrypted form that keeps them safe while sharing them with 
    authorised users.<br/><br/>
    
    The documents which you uploaded on docslok are immediately gets encrypted as soon as you upload them and only the authrosied user
    having access to the keys will be able to access them. Also we provide the option to add a another layer of security to your 
    documents by enabling password protected documents.<br/><br/>
    
    Read more about the encryption process and our work under <a href="/app/about">about</a> section.</p>
    </p>
  </div>

  
  <div class="col-3 col-s-12">
			<div class="aside">
				<img width="88%"
					src="https://image.shutterstock.com/image-vector/laptop-blank-screen-silver-color-260nw-1382811212.jpg">
			</div>
		</div>
	</div>
</div>

		<div class="footer" id="f1">
  			<h1>docslok</h1>
  			<p>Securing your documents</p>
		</div>
</body>
</html>
