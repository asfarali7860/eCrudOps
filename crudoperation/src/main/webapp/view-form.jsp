<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="addifi/view.css">
<title>Employee Management System</title>
<link rel="icon" type="image/x-icon" href="division.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<style>
.row{
	border: 
}

footer {
	background: teal;
	height: auto;
	width: 100vw;
	font-family: "Open Sans";
	padding-top: 40px;
	color: #fff;
}

.footer-content {
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	text-align: center;
}

.footer-content h3 {
	font-size: 1.8rem;
	font-weight: 400;
	text-transform: capitalize;
	line-height: 3rem;
}

.footer-content p {
	max-width: 500px;
	margin: 10px auto;
	line-height: 28px;
	font-size: 14px;
}

.socials {
	list-style: none;
	display: flex;
	align-items: center;
	justify-content: center;
	margin: 1rem 0 3rem 0;
}

.socials li {
	margin: 0 10px;
}

.socials a {
	text-decoration: none;
	color: #fff;
}

.socials a i {
	font-size: 1.1rem;
	transition: color .4s ease;
}

.socials a:hover i {
	color: aqua;
}

.footer-bottom {
	background: #000;
	width: 100vw;
	padding: 20px 0;
	text-align: center;
}

.footer-bottom p {
	font-size: 14px;
	word-spacing: 2px;
	text-transform: capitalize;
}

.footer-bottom span {
	text-transform: uppercase;
	opacity: .4;
	font-weight: 20;
}

.navbar {
	width: 100vw;
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 20px;
	background-color: teal;
	color: #fff;
}

.nav-links a {
	color: #fff;
}

/* LOGO */
.logo {
	font-size: 32px;
}

a {
	text-decoration: none;
}

li {
	list-style: none;
}

/* NAVBAR MENU */
.menu {
	display: flex;
	gap: 1em;
	font-size: 18px;
}

.menu li:hover {
	background-color: #4c9e9e;
	border-radius: 5px;
	transition: 0.3s ease;
}

.menu li {
	padding: 5px 14px;
}

/* DROPDOWN MENU */
.services {
	position: relative;
}

.dropdown {
	background-color: rgb(1, 139, 139);
	padding: 1em 0;
	position: absolute;
	display: none;
	border-radius: 8px;
	top: 35px;
}

.dropdown li+li {
	margin-top: 10px;
}

.dropdown li {
	padding: 0.5em 1em;
	width: 8em;
	text-align: center;
}

.dropdown li:hover {
	background-color: #4c9e9e;
}

.services:hover .dropdown {
	display: block;
}

.row {
	background-color: white;
	border-radius: 30px;
	box-shadow: 12px 12px 22px;
}

input[type=checkbox] {
	display: none;
}

.hamburger {
	display: none;
	font-size: 24px;
	user-select: none;
}

/* APPLYING MEDIA QUERIES */
@media ( max-width : 768px) {
	.navbar {
		width: 95vw;
	}
	.menu {
		display: none;
		position: absolute;
		background-color: teal;
		right: 0;
		left: 0;
		text-align: center;
		padding: 16px 0;
	}
	.menu li:hover {
		display: inline-block;
		background-color: #4c9e9e;
		transition: 0.3s ease;
	}
	.menu li+li {
		margin-top: 12px;
	}
	input[type=checkbox]:checked ~.menu {
		display: block;
	}
	.hamburger {
		display: block;
	}
	.dropdown {
		left: 50%;
		top: 30px;
		transform: translateX(35%);
	}
	.dropdown li:hover {
		background-color: #4c9e9e;
	}
}

.btn1 {
	border: none;
	outline: none;
	height: 50px;
	width: 100%;
	background-color: black;
	color: white;
	border-radius: 4px;
	font-weight: bold;
}

.btn1:hover {
	background: white;
	border: 1px solid;
	color: black;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<nav class="navbar">
		<div class="logo">EMPLOYEE MANAGEMENT SYSTEM</div>
		<ul class="nav-links">
			<!-- USING CHECKBOX HACK -->
			<input type="checkbox" id="checkbox_toggle" />
			<label for="checkbox_toggle" class="hamburger">&#9776;</label>
			<!-- NAVIGATION MENUS -->
			<div class="menu">
				<li><a href="<%=request.getContextPath()%>/list">List</a></li>
				<li><a href="/">About</a></li>
				<li><input type="search" placeholder="Search..."
					class="form-control search-input" data-table="rwd-table" /></li>
			</div>
		</ul>
	</nav>


	<div class="container rounded bg-white mt-5 mb-5">
		<div class="row" style="border-radius:5px">
			<div class="col-md-3 border-right">
				<div
					class="d-flex flex-column align-items-center text-center p-3 py-5">
					<img class="rounded-circle mt-5" width="150px"
						src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span
						class="font-weight-bold"> ${user.name}</span><span
						class="text-black-50">${user.email}</span><span> </span>
				</div>
			</div>
			<div class="col-md-5 border-right">
				<div class="p-3 py-5">
					<div class="d-flex justify-content-between align-items-center mb-3">
						<h1 class="text-right">Personal Details</h1>
					</div>
					<div class="row mt-2" style="border-radius:5px">
						<div class="col-md-6">
							<label class="labels">Name</label><input type="text"
								class="form-control" value="${user.name}" readonly>
						</div>
						<div class="col-md-6">
							<label class="labels">Employee Id</label><input type="text"
								class="form-control" value="${user.eid }" readonly>
						</div>
					</div>
					<div class="row mt-3" style="border-radius:5px; height:auto">
						<div class="col-md-12">
							<label class="labels">Mobile Number</label><input type="text"
								class="form-control" value="${user.phone }" readonly>
						</div>
						<div class="col-md-12">
							<label class="labels">Address</label><input type="text"
								class="form-control" value="${user.address}" readonly>
						</div>
						<div class="col-md-12">
							<label class="labels">State</label><input type="text"
								class="form-control" value="${user.state}" readonly>
						</div>
						<div class="col-md-12">
							<label class="labels">Postcode</label><input type="text"
								class="form-control" value="${user.pcode}" readonly>
						</div>
						<div class="col-md-12">
							<label class="labels">Email ID</label><input type="text"
								class="form-control" value="${user.email}" readonly>
						</div>
					</div>
					<div class="row mt-3" style="border-radius:5px; border:0px ">
						<div class="col-md-12">
							<label class="labels">State</label><input type="text"
								class="form-control" value="${user.state}" readonly>
						</div>
						<div class="col-md-6">
							<label class="labels">Country</label><input type="text"
								class="form-control" value="${user.country}" readonly>
						</div>
					</div>
					<div class="mt-5 text-center">
						<button class="btn btn-primary profile-button" type="button"
							onclick="history.back(-1)">Back</button>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="p-3 py-5">
					<div
						class="d-flex justify-content-between align-items-center experience">
						<h3>Office Details</h3>
					</div>
					<br>
					<div class="row" style="border-radius:5px">
					<div class="col-md-12">
						<label class="labels">Department</label><input type="text"
							class="form-control" value="${user.dept}" readonly>
					</div>
					<br>
					<div class="col-md-12">
						<label class="labels">Branch</label><input type="text"
							class="form-control" value="${user.branch}" readonly>
					</div>
					<div class="col-md-12">
						<label class="labels">Joining Date</label><input type="text"
							class="form-control" value="${user.jdate}" readonly>
					</div>
					<div class="col-md-12">
						<label class="labels">Salary per Annum</label><input type="text"
							class="form-control" value="${user.spa}" readonly>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>

	<footer>
		<div class="footer-content">
			<h3>Employee Management System</h3>
			<p>need help or have question? We are here for you</p>
			<ul class="socials">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
			</ul>
		</div>
		<div class="footer-bottom">
			<p>contact number: 9155545904</p>
			<p>
				copyright &copy;2022 designed by <span>Sakshi Diwakar</span>
			</p>
		</div>
	</footer>
</body>
</html>