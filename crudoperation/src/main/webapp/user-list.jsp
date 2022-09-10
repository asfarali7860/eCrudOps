<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Employee Management System</title>
<link rel="icon" type="image/x-icon" href="division.png">
<style>
@import 'https://fonts.googleapis.com/css?family=Open+Sans:600,700';

        * {
        	margin: 0px;
            font-family: 'Open Sans', sans-serif;
        }

        .rwd-table {
            margin: auto;
            min-width: 300px;
            max-width: 100%;
            border-collapse: collapse;
        }

        .rwd-table tr:first-child {
            border-top: none;
            background: teal;
            color: #fff;
        }

        .rwd-table tr {
            border-top: 1px solid #ddd;
            border-bottom: 1px solid #ddd;
            background-color: #f5f9fc;
        }

        .rwd-table tr:nth-child(odd):not(:first-child) {
            background-color: #ebf3f9;
        }

        .rwd-table th {
            display: none;
        }

        .rwd-table td {
            display: block;
        }

        .rwd-table td:first-child {
            margin-top: .5em;
        }

        .rwd-table td:last-child {
            margin-bottom: .5em;
        }

        .rwd-table td:before {
            content: attr(data-th) ": ";
            font-weight: bold;
            width: 120px;
            display: inline-block;
            color: #000;
        }

        .rwd-table th,
        .rwd-table td {
            text-align: left;
        }

        .rwd-table {
            color: #333;
            border-radius: .4em;
            overflow: hidden;
        }

        .rwd-table tr {
            border-color: #bfbfbf;
        }

        .rwd-table th,
        .rwd-table td {
            padding: .5em 1em;
        }

        @media screen and (max-width: 601px) {
            .rwd-table tr:nth-child(2) {
                border-top: none;
            }
        }

        @media screen and (min-width: 600px) {
            .rwd-table tr:hover:not(:first-child) {
                background-color: #d8e7f3;
            }

            .rwd-table td:before {
                display: none;
            }

            .rwd-table th,
            .rwd-table td {
                display: table-cell;
                padding: .25em .5em;
            }

            .rwd-table th:first-child,
            .rwd-table td:first-child {
                padding-left: 0;
            }

            .rwd-table th:last-child,
            .rwd-table td:last-child {
                padding-right: 0;
            }

            .rwd-table th,
            .rwd-table td {
                padding: 1em !important;
            }
        }


        h1 {
            text-align: center;
            font-size: 2.4em;
            color: teal;
        }

        .container {
         
            text-align: center;
        }
        .text-left{
        margin-left: 20px;
        text-align: center;
        border: 1px solid black;
        background: white;
        width: 150px;
        margin-bottom:10px;
        border-radius: 5px;
        }
        
        .text-left:hover{
        background: plum;
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
	width: 97vw;
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
.navbar{
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
	height: 25px;
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
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<li><a href="<%=request.getContextPath()%>/list">List</a></li><li><a href="userinfo.jsp">Info</a></li>
				<li><input type="search" placeholder="Search..." class="form-control search-input" data-table="rwd-table"/></li>
				<li class="services"><form action="logout" method="post"><button type="submit" value="submit" class="btn1">Log out</button><li> 
			</div>
		</ul>
	</nav>
	


	<div class="contan">
		<h1 class="animate-charcter">List of Users</h1>
	</div>
	<div class="container">
		<div class="container text-left">
			<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
				New User</a>
		</div>
		<table class="rwd-table">
			<tbody>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Department</th>
					<th>Actions</th>
				</tr>

				<c:forEach var="user" items="${listUser}">

					<tr>
						<td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.name}" /></td>
						<td><c:out value="${user.email}" /></td>
						<td><c:out value="${user.phone}" /></td>
						<td><c:out value="${user.dept}" /></td>
						<td><a href="view?id=<c:out value='${user.id}' />">View</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a href="edit?id=<c:out value='${user.id}' />">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
					</tr>
				</c:forEach>


			</tbody>
		</table>
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
	
	<script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>
	
	<script>
	
	
        (function(document) {
            'use strict';

            var TableFilter = (function(myArray) {
                var search_input;

                function _onInputSearch(e) {
                    search_input = e.target;
                    var tables = document.getElementsByClassName(search_input.getAttribute('data-table'));
                    myArray.forEach.call(tables, function(table) {
                        myArray.forEach.call(table.tBodies, function(tbody) {
                            myArray.forEach.call(tbody.rows, function(row) {
                                var text_content = row.textContent.toLowerCase();
                                var search_val = search_input.value.toLowerCase();
                                row.style.display = text_content.indexOf(search_val) > -1 ? '' : 'none';
                            });
                        });
                    });
                }

                return {
                    init: function() {
                        var inputs = document.getElementsByClassName('search-input');
                        myArray.forEach.call(inputs, function(input) {
                            input.oninput = _onInputSearch;
                        });
                    }
                };
            })(Array.prototype);

            document.addEventListener('readystatechange', function() {
                if (document.readyState === 'complete') {
                    TableFilter.init();
                }
            });

        })(document);
    </script>
</body>

</html>