<DOCTYPE html>
	<head>
		<title>:: Calculadora do IMC ::</title>
		<meta charset="utf-8"/>

		
		<link rel="stylesheet" href="css/bootstrap.min.css">

		<style type="text/css">

			label{
				font-weight: bold;
			}
			.FormCentralizado{
				width: 360;
    			margin: 50 auto;
    			background-color: gray;
			}
			.TituloCentralizado{
				width: 400;
				margin: 0 auto;
			}

		</style>

	</head>
	<body>
		
		<div>
			<div class="container">
				<div class="TituloCentralizado"> <h1 style="background-color: rgb(0,255,255); border-radius: 10px; color: rgb(50,153,159); text-align: center;"> Calculadora do IMC </h1> </div>	
		  		<form class="FormCentralizado" style="border: 6px solid rgb(0,255,255); border-radius: 6px;">
					<p><strong> Sexo </strong></p>
		  				 <div class="row">
						    <div class="col-6">
						      	<label for='male'><input id='male' type="radio" value="male" name="gender">Masculino</label>
						   	</div>

						    <div class="col-6">
						      	<label for='female'><input id='female' type="radio" value="female" name="gender">Feminino</label>
						   	 </div>
						  </div>
						
		  			<div class="form-group">
					    <label for="age">Idade</label>
					    <input type="number" step="any" class="form-control" id="age" placeholder="22" maxlength="3">
					 </div>

					<div class="form-group">
					   	<label for="height">Altura</label>
					    <input type="number" step="any" class="form-control" name="height" placeholder="1,83" maxlength="3">
					</div>

					<div class="form-group">
					   	<label for="weight">Peso</label>
					    <input type="number" step="any" class="form-control" name="weight" placeholder="85,5" maxlength="5">
					</div>

					<p><strong> Atividade Fisica </strong></p>
					<div class="row">
						<div class="col-4">
							<label for="athleticActivity_1"><input value="Sedentaria" name="athleticActivity" type="radio" >Sedentaria</label>
						</div>

						<div class="col-4">
						    <label for="athleticActivity_2"><input value="moderada" name="athleticActivity" type="radio" >Moderada</label>
						</div>

						<div class="col-4">
						    <label for="athleticActivity_3"><input value="intensa" name="athleticActivity" type="radio" >Intensa</label>
						</div>
					</div>	

					<div class="row">
						<div class="col-6 offset-3">	
							<button style="width: 100%; background-color: rgb(0,255,255); color: black; border: none" class="btn btn-default"><strong>Calcular IMC</strong></button>

						</div>
					</div>
		   	
				</form>
				<%
				String pesoStr = request.getParameter("weight");
				String alturaStr = request.getParameter("height");
				String mensagem = "Informe seus dados.";

				if(pesoStr != null && !pesoStr.isEmpty() && alturaStr != null && !alturaStr.isEmpty()){
					float peso = Float.parseFloat(pesoStr);
					float altura = Float.parseFloat(alturaStr);
					float calculoIMC = peso / (altura * altura);

					if(calculoIMC <= 16.9){
						mensagem = "MUITO ABAIXO DO PESO";
					}

					else if(calculoIMC >= 17 && calculoIMC <= 18.4){
						mensagem = "ABAIXO DO PESO";
					}

					else if(calculoIMC >= 18.5 && calculoIMC <= 24.9 ){
						mensagem = "PESO NORMAL";
					}

					else if(calculoIMC >= 25 && calculoIMC <= 29.9){
						mensagem = "ACIMA DO PESO";
					}

					else if(calculoIMC >= 30 && calculoIMC <= 34.9){
						mensagem = "OBESIDADE GRAU 1";
					}

					else if(calculoIMC >= 35 && calculoIMC <= 40){
						mensagem = "OBESIDADE GRAU 2";
					}

					else if(calculoIMC > 40){
						mensagem = "OBESIDADE GRAU 3";
					}
				}
				%>

				<div style="width: 500; margin: 50 auto; text-align: center; font-weight: bold;">
            		<%
           			out.print(mensagem);
            		%>
        		</div>
        		       
			</div>
		</div>
		
		
	</body>


</html>