<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Employee Management System</title>
<link rel="icon" type="image/x-icon" href="division.png">
<style>
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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<nav class="navbar">
		<!-- LOGO -->
		<div class="logo">EMPLOYEE MANAGEMENT SYSTEM</div>
		<!-- NAVIGATION MENU -->
		<ul class="nav-links">
			<!-- USING CHECKBOX HACK -->
			<input type="checkbox" id="checkbox_toggle" />
			<label for="checkbox_toggle" class="hamburger">&#9776;</label>
			<!-- NAVIGATION MENUS -->
			<div class="menu">
				<li><a href="<%=request.getContextPath()%>/list">List</a></li>
				<li><a href="/">About</a></li>
				<li><a href="/">Contact</a></li>
			</div>
		</ul>
	</nav>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
                                    Edit User
                                </c:if>
						<c:if test="${user == null}">
                                    Add New User
                                </c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>
				
				<fieldset class="form-group">
					<label>User E_id</label> <input type="text"
						value="<c:out value='${user.eid}' />" class="form-control"
						name="eid" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>User DOB</label> <input type="text"
						value="<c:out value='${user.dob}' />" class="form-control"
						name="dob" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User Gender</label> <input type="text"
						value="<c:out value='${user.gender}' />" class="form-control"
						name="gender" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User Phone</label> <input type="text"
						value="<c:out value='${user.phone}' />" class="form-control"
						name="phone" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${user.address}' />" class="form-control"
						name="address" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>State</label> <input type="text"
						value="<c:out value='${user.state}' />" class="form-control"
						name="state" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User PIN code</label> <input type="text"
						value="<c:out value='${user.pcode}' />" class="form-control"
						name="pcode" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>User Password</label> <input type="text"
						value="<c:out value='${user.password}' />" class="form-control"
						name="password" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Country</label> <input type="text"
						value="<c:out value='${user.country}' />" class="form-control"
						name="country" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Department</label> <input type="text"
						value="<c:out value='${user.dept}' />" class="form-control"
						name="dept" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Branch</label> <input type="text"
						value="<c:out value='${user.branch}' />" class="form-control"
						name="branch" required="required">
				</fieldset>
				
				
				<fieldset class="form-group">
					<label>Joining Date</label> <input type="text"
						value="<c:out value='${user.jdate}' />" class="form-control"
						name="jdate" required="required">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Salary per Annum</label> <input type="text"
						value="<c:out value='${user.spa}' />" class="form-control"
						name="spa" required="required">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
	<br>
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