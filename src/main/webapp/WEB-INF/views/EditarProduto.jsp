<%@include file="./topo.jsp"%>

	<div class="container mt-3">

		<h1>Editar Produto</h1>
		<form action="editarProduto" method="post">

			<div class="row">
				<div class="col">
					<div class="form-group">
						<label for="id">Código</label> <input type="text"
							value="${produto.codigo}" class="form-control" id="codigo" name="codigo"
							readonly="readonly">
					</div>
				</div>
			</div>

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

			
			<button type="submit" class="btn btn-primary">Editar</button>
			<a href="../formularioListarProdutos" class="btn btn-secondary">Cancelar</a>
		</form>

	</div>

</body>
</html>