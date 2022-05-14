package com.projeto.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.projeto.dao.ProdutoDao;
import com.projeto.modelo.Produto;

@Service
public class ProdutoServico {

	@Autowired
	ProdutoDao produtoDao;

	// Cadastrar produto
	public void cadastrarProduto(Produto emp)
	{
		produtoDao.cadastrarProduto(emp);
	}
	
	// Listar todos os produtos
	public List<Produto> listarTodosProdutos()
	{
		return produtoDao.listarTodosProdutos();
	}
	
	
	// Obter produto através de um código
	public Produto obterProdutoPorCodigo(Long codigo)
	{
		return produtoDao.obterProdutoPorCodigo(codigo);
	}
	
	
	// Editar
	public void editarProduto(Produto produto)
	{
		produtoDao.editarProduto(produto);
	}
	
	
	// Deletar
	public void deletarProduto(Long codigo)
	{
		produtoDao.deletarProduto(codigo);
	}
	
}