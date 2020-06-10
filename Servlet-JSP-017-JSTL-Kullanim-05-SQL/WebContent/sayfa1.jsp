<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kayit Sayfasi</title>
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

	<h1 style="text-align: center;padding-bottom: 25px;">MySQL kullanici Kaydı Yapma</h1>
	<div class="container">
		<!-- Content here -->

		<form action="veriEkle.jsp" method="post">
			<div class="form-group row">
				<label for="kul_adi" class="col-sm-2 col-form-label">Ad :</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="kul_adi" name="kul_adi">
				</div>
			</div>


			<div class="form-group row">
				<label for="kul_soyadi" class="col-sm-2 col-form-label">Soyad :</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="kul_soyadi" name="kul_soyadi">
				</div>
			</div>


			<fieldset class="form-group">
				<div class="row">
					<legend class="col-form-label col-sm-2 pt-0">Cinsiyet :</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="kul_cinsiyet" id="kul_cinsiyet_e" value="erkek" checked>
							<label class="form-check-label" for="kul_cinsiyet_e">Erkek</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="kul_cinsiyet" id="kul_cinsiyet_k" value="kadın"> 
							<label class="form-check-label" for="kul_cinsiyet_k">Kadın</label>
						</div>
					</div>
				</div>
			</fieldset>
			<div class="form-group row">
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">Kaydet</button>
				</div>
			</div>
		</form>
	</div>
	
	<%
		if(request.getParameter("durum")!=null)
		{
			if(request.getParameter("durum").equals("true"))
			{
		%>
		
			<script>
				alert("kayıt başarılı");
			</script>
		<%
			}
		}
	%>
</body>
</html>