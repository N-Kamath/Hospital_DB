<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">PATIENT REGISTER</p>

						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-3">${sucMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="user_register" method="post">
							<div class="mb-3">
								<label class="form-label">FIRSTNAME</label> <input required
									name="FIRSTNAME" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">LASTNAME</label> <input required
									name="LASTNAME" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label> <input required
									name="DOB" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">GENDER</label> <input required
									name="GENDER" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">PHONE</label> <input required
									name="PHONE" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">ADDRESS</label> <input required
									name="ADDRESS" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">SSN</label> <input required
									name="SSN" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">COVIDSTATUS</label> <input required
									name="COVIDSTATUS" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">INSURANCEID</label> <input required
									name="INSURANCEID" type="text" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">Email address</label> <input required
									name="email" type="email" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-label">PATIENTID</label> <input required
									name="email" type="PATIENTID" class="form-control">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input required
									name="password" type="password" class="form-control">
							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>