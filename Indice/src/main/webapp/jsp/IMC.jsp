<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Bootstrap 101 Template</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<body>
	<form>
		Nome: <input type="text" name="nome"> <br> Altura: <input
			type="text" name="altura"> <br> Peso: <input type="text"
			name="peso"> <br> <input type="submit">
	</form>
	RESULTADO:
	<%
		String Nome = request.getParameter("nome");
		Nome = Nome == null ? "0" : Nome;
		String PamAltura = request.getParameter("altura");
		PamAltura = PamAltura == null ? "0" : PamAltura;
		Float Altura = Float.parseFloat(PamAltura);

		String PamPeso = request.getParameter("peso");
		PamPeso = PamPeso == null ? "0" : PamPeso;
		Float Peso = Float.parseFloat(PamPeso);
		Float Imc = Peso / (Altura * Altura);
		if (Imc < 17)
			out.print(Nome + " é Desnutrido");
		if (Imc > 17 && Imc < 18.49)
			out.print(Nome + " é Magrelo");
		if (Imc > 18.49 && Imc < 24.99)
			out.print(Nome + " é Normal");
		if (Imc > 24.99 && Imc < 29.99)
			out.print(Nome + " é Gordo");
		if (Imc > 29.99 && Imc < 34.99)
			out.print(Nome + " é Gordo Baleia");
		if (Imc > 34.99 && Imc < 39.99)
			out.print(Nome + " é Gordo Baleia Saco de Areia");
		if (Imc > 39.99)
			out.print(Nome + " a terra dira sob você");
	%>
	<br>
	<%
		out.print("IMC: " + Peso / (Altura * Altura));
	%>
</body>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>

</html>

