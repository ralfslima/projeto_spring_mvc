<%@include file="./topo.jsp"%>

	<div class="container mt-12">
		
		<h1 style="margin: 50px; text-align:center">Listagem de produtos</h1>
	
		<div class="row">

			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">Código</th>
						<th scope="col">Nome</th>
						<th scope="col">Marca</th>
						<th scope="col">Valor</th>
						<th scope="col">Editar</th>
						<th scope="col">Remover</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="produto" items="${produto}">
						<tr>
							<td class="table-plus">${produto.codigo}</td>
							<td>${produto.nome}</td>
							<td>${produto.marca}</td>
							<td>${produto.valor}</td>
							<td><a href="formularioEditarProduto/${produto.codigo}" class="btn btn-warning">Editar</a></td>
							<td><a href="deletarProduto/${produto.codigo}" class="btn btn-danger">Remover</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>