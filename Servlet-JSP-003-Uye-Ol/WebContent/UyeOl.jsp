<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
</style>

<style>
.info {
  padding: 20px;
  background-color: #4CAF50;
  color: white;
}

.alert {
	padding: 20px;
	background-color: #f44336;
	color: white;
}

.closebtn {
	margin-left: 15px;
	color: white;
	font-weight: bold;
	float: right;
	font-size: 22px;
	line-height: 20px;
	cursor: pointer;
	transition: 0.3s;
}

.closebtn:hover {
	color: black;
}
</style>
<title>Kayıt Ol Sayfası</title>
</head>
<body>
	<%
		boolean ad = (boolean) request.getAttribute("hata_ad");
	boolean soyad = (boolean) request.getAttribute("hata_soyad");
	boolean yas = (boolean) request.getAttribute("hata_yas");

	String veri_ad = (String) request.getAttribute("veri_ad");
	String veri_soyad = (String) request.getAttribute("veri_soyad");
	String veri_yas = (String) request.getAttribute("veri_yas");
	%>

	<%
		if (ad) {
	%>

	<div class="alert">
		<span class="closebtn"
			onclick="this.parentElement.style.display='none';">&times;</span> <strong>Hata!</strong>
		Lütfen Adı Alanını Kontrol Ediniz...
	</div>
	<br>

	<%
		}
	%>


	<%
		if (soyad) {
	%>
	<div class="alert">
		<span class="closebtn"
			onclick="this.parentElement.style.display='none';">&times;</span> <strong>Hata!</strong>
		Lütfen Soyad Alanını Kontrol Ediniz...
	</div>
	<br>
	<%
		}
	%>

	<%
		if (yas) {
	%>
	<div class="alert">
		<span class="closebtn"
			onclick="this.parentElement.style.display='none';">&times;</span> <strong>Hata!</strong>
		Lütfen Yaş Alanını Kontrol Ediniz...
	</div>
	<br>
	<%
		}
	%>
	<div class="container">
		<form action="KayitOl" method="post">
			<div class="row">
				<div class="col-25">
					<label for="fname">Ad : </label>
				</div>
				<div class="col-75">
					<input type="text" id="fname" name="firstname" required
						placeholder="Adınız..." value="<%=veri_ad == null ? "" : veri_ad%>">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Soyad : </label>
				</div>
				<div class="col-75">
					<input type="text" id="lname" name="lastname" required
						placeholder="Soyadınız..."
						value="<%=veri_soyad == null ? "" : veri_soyad%>">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="sex">Cinsiyet : </label>
				</div>
				<div class="col-75">
					<select id="sex" name="sex">
						<option value="0">Kadın</option>
						<option value="1" selected="selected">Erkek</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="age">Yaş : </label>
				</div>
				<div class="col-75">
					<input type="text" id="age" name="age" required
						placeholder="Yaşınız" value="<%=veri_yas == null ? "" : veri_yas%>">
				</div>
			</div>
			<div class="row" style="padding-top: 15px;">
				<input type="submit" value="Kayıt Ol">
			</div>
		</form>
	</div>
	
	<%
		boolean basari = (boolean)request.getAttribute("basarili");
		if (basari) 
		{
	%>
	<br>
	<div class="info">
		<span class="closebtn"
			onclick="this.parentElement.style.display='none';">&times;</span> 
			<strong>Başarılı bir şekilde kaydınız gerçekleştirilmiştir.</strong>
	</div>
	<%
		}
	%>
</body>
</html>