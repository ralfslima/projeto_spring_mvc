<%@include file="./topo.jsp"%>

	<div class="container mt-12">
	
		<h1 style="margin: 50px; text-align:center">Cadastrar produto</h1>
		<form action="cadastrarProduto" method="post">
			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="name">Nome do produto</label> <input type="text"
							value="${produto.nome }" class="form-control" id="nome"
							name="nome" placeholder="Nome do produto">
					</div>
				</div>
				<div class="col">
					<div class="form-group">
						<label for="designation">Marca</label> <input type="text"
							value="${produto.marca }" class="form-control"
							id="marca" name="marca"
							placeholder="Marca">
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col">
					<div class="form-group">
						<label for="salary">Valor</label> <input type="number"
							value="${produto.valor }" class="form-control" id="valor"
							name="valor" placeholder="Valor">
					</div>
				</div>
			</div>

			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>

	</div>
</body>
</html>