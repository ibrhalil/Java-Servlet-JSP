<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listele</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<sql:setDataSource var="baglanti" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/world?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey"
			user="root" password="toor" />

		<c:if test="${baglanti!=null}">

			<sql:query var="tablooo" dataSource="${baglanti}">
			SELECT * FROM country;
		</sql:query>
		
			<table class="table table-striped">
				<thead>
					<tr>
						<c:forEach var="kolon" items="${tablooo.columnNames}">
							<th scope="col">${fn:toUpperCase(kolon)}</th>
						</c:forEach>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="satir" items="${tablooo.rows}">
						<tr>
							<c:set var="i" value="1"></c:set>
							<c:forEach var="kol" items="${tablooo.columnNames}">
								<td><c:out value="${satir.rows[i]}"></c:out></td>
							</c:forEach>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</c:if>
	</div>
</body>
</html>