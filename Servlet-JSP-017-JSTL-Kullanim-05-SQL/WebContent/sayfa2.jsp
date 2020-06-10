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
	<%
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
	%>

	<div class="container">
		<sql:setDataSource var="baglanti" driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/testdb?useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey"
			user="root" password="toor" />

		<c:if test="${param.islem=='sil' && param.id!=null }">
			
			
			
			<sql:update var="veriSil" dataSource="${baglanti}">
			
			
				DELETE FROM personel WHERE personel_id = ?;
				
				
				<sql:param value="${param.id}"></sql:param>
			</sql:update>
			<h3 style="color: red;">${param.id} numaralı kayıt silindi</h3>
		</c:if>
			
		<c:if test="${baglanti!=null}">

			<sql:query var="kisilerTablo" dataSource="${baglanti}">
			SELECT * FROM personel;
			</sql:query>

			<table class="table table-striped">
				<thead>
					<tr>
						<c:forEach var="kolon" items="${kisilerTablo.columnNames}">
							<th scope="col">${fn:toUpperCase(kolon)}</th>
						</c:forEach>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="satir" items="${kisilerTablo.rows}">
						<tr>
							<th scope="row"><c:out value="${satir.personel_id}"></c:out></th>
							<td><c:out value="${satir.ad}"></c:out></td>
							<td><c:out value="${satir.soyad}"></c:out></td>
							<td><c:out value="${satir.cinsiyet}"></c:out></td>
							<td><c:out value="${satir.kayit_tarih}"></c:out></td>
							<td>
								<a class="btn btn-warning" href="sayfa2.jsp?islem=sil&id=${satir.personel_id}">Sil</a>
								<a class="btn btn-info" href="sayfa3.jsp?islem=gun&id=${satir.personel_id}">Güncelle</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</c:if>
	</div>
</body>
</html>