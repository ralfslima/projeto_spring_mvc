package com.projeto.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.projeto.modelo.Produto;

@Component
public class ProdutoDao {

	@Autowired
	HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void cadastrarProduto(Produto produto)
	{
		hibernateTemplate.save(produto);
	}
	
	@Transactional
	public List<Produto> listarTodosProdutos()
	{
		return hibernateTemplate.loadAll(Produto.class);
	}
	
	@Transactional
	public Produto obterProdutoPorCodigo(Long codigo)
	{
		Produto produto = hibernateTemplate.get(Produto.class, codigo);
		return produto;
	}
	
	
	@Transactional
	public void editarProduto(Produto produto)
	{
		hibernateTemplate.update(produto);
	}
	
	
	@Transactional
	public void deletarProduto(Long codigo)
	{
		hibernateTemplate.delete(hibernateTemplate.load(Produto.class, codigo));
	}

}
