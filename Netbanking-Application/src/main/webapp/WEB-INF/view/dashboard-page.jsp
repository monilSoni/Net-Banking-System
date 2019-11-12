<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!doctype html>
<html lang="en">

<head>
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/css?family=Questrial&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="styles/main-style.css">
<link rel="stylesheet" type="text/css" href="styles/dashboard-style.css">
</head>

<body>

	<security:authentication var="username" property="principal.username" /> 

	<div class="header">
		<nav>
			<h1>Netbanking Application</h1>
		</nav>
	</div>
	<div class="main">
		<div class="navigation-bar">

			<!-- get username from spring security -->
			<h3 class="welcome-message">Welcome ${username }</h3>
			
			<!-- Add link to go back to home page -->
			<!-- <a href="${pageContext.request.contextPath}/">Back to Home Page</a> -->
			
			<a class="logout-link" href="${pageContext.request.contextPath }/logout">Logout</a>
			
		</div>
		<div class="account-details">
			<h3>Dashboard</h3>
			<table>
				<tr>
					<th>Account Number</th>
					<th>IFSC code</th>
					<th>Account type</th>
					<th>Current balance</th>
					<th>Currency</th>
					<th>Transfer</th>
				</tr>

				<c:forEach var="accountList" items="${accountList}">

					<c:url var="transferLink" value="/transfer">
						<c:param name="accountNo" value="${accountList.accountNo}">
						</c:param>
					</c:url>

					<tr>
						<td>${accountList.accountNo}</td>
						<td>${accountList.IFSC}</td>
						<td>${accountList.type}</td>
						<td>${accountList.balance}</td>
						<td>${accountList.currency}</td>
						<td class="transfer-link"><a href="${transferLink}">Proceed</a></td>
					</tr>

				</c:forEach>
			</table>
		</div>
	</div>
</body>

</html>