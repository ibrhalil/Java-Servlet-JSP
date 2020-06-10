<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>İletişim</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
	integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
	integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">

		<form class="well form-horizontal" action="cevap.jsp" method="post"
			id="contact_form">
			<fieldset>

				<!-- Form Name -->
				<legend>Bizimle İletişime Geç</legend>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Ad</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="name"
								placeholder="Adınız..." class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->

				<div class="form-group">
					<label class="col-md-4 control-label">Soyad</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input name="lastName"
								placeholder="Soyadınız..." class="form-control" type="text">
						</div>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label">E-Mail</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-envelope"></i></span> <input name="mail"
								placeholder="E-Mail Adresiniz..." class="form-control"
								type="text">
						</div>
					</div>
				</div>


				<!-- radio checks -->
				<div class="form-group">
					<label class="col-md-4 control-label">Cinsiyet</label>
					<div class="col-md-4">
						<div class="radio">
							<label> <input type="radio" name="sex" value="erkek"
								checked /> Erkek
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="sex" value="kadın" />
								Kadın
							</label>
						</div>
					</div>
				</div>

				<!-- Text area -->

				<div class="form-group">
					<label class="col-md-4 control-label">Mesajınız</label>
					<div class="col-md-4 inputGroupContainer">
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-pencil"></i></span>
							<textarea class="form-control" name="message"
								placeholder="Mesajınızı Giriniz..."></textarea>
						</div>
					</div>
				</div>
				
				
				<%--
				
				<%
					if (application.getAttribute("hata") != null) {
					if (!(boolean) application.getAttribute("hata")) {
				%>
				<!-- Success message -->
				<div class="alert alert-success" role="alert" id="success_message">
					Başarılı <i class="glyphicon glyphicon-thumbs-up"></i><br>Teşekkürler
					Sizilen Yakın Bir Zamanda İletişime Geçeceğiz...
				</div>

				<%
					} else {
				%>
				<!-- Alert message -->
				<div class="alert alert-danger" role="alert" id="danger_message">
					Başarısız <i class="glyphicon glyphicon-thumbs-down"></i><br>Lütfen
					Bilgilerinizi Kontrol Ediniz...
				</div>
				<%
					}
				}
				%> --%>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label"></label>
					<div class="col-md-4">
						<button type="submit" class="btn btn-warning">
							Gönder <span class="glyphicon glyphicon-send"></span>
						</button>
					</div>
				</div>

			</fieldset>
		</form>
	</div>

	<!-- /.container -->
</body>
</html>