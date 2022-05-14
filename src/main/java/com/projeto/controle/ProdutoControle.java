package com.projeto.controle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.projeto.modelo.Produto;
import com.projeto.servico.ProdutoServico;

@Controller
@RequestMapping
public class ProdutoControle {

	@Autowired
	ProdutoServico produtoServico;
	
	// Redirecionamento para a página de cadastro de produtos
	@GetMapping("/")
	public String redirecionamentoFormularioCadastrarProduto()
	{
		return "redirect:/formularioCadastrarProduto";
		
	}
	
	// Página contendo o formulário para cadastrar um produto
	@GetMapping("formularioCadastrarProduto")
	public String formularioCadastrarProduto()
	{
		return "CadastrarProduto";
		
	}
		
	// Método para cadastrar um produto
	@PostMapping("/cadastrarProduto")
	public String cadastrarProduto(@ModelAttribute("cadastrarProduto") Produto produto)
	{
		produtoServico.cadastrarProduto(produto);
		return "redirect:/formularioListarProdutos";
	}
	
	// Página contendo o formulário para listar todos os produtos
	@GetMapping("formularioListarProdutos")
	public String listarProdutos(Model m)
	{
		m.addAttribute("produto", produtoServico.listarTodosProdutos());
		m.addAttribute("titulo", "Listagem de produtos");
		
		return "ListarProdutos";
	}
	
	// Página contendo o formulário para alterar o produto 
	@GetMapping("/formularioEditarProduto/{codigo}")
	public String formularioEditarProduto(@PathVariable(value="codigo") Long codigo, Model m)
	{
		Produto produto = produtoServico.obterProdutoPorCodigo(codigo);
		
		m.addAttribute("produto", produto);
		m.addAttribute("titulo", "Editar produto");
		
		return "EditarProduto";
	}
	
	// Método para editar o produto
	@PostMapping("formularioEditarProduto/editarProduto")
	public String editarProduto(@ModelAttribute("editarProduto") Produto produto)
	{
		produtoServico.editarProduto(produto);
		
		return "redirect:/formularioListarProdutos";
	}
	
	// Remover produto através do código
	@GetMapping("/deletarProduto/{codigo}")
	public String deletarProduto(@PathVariable Long codigo)
	{
		produtoServico.deletarProduto(codigo);
		
		return "redirect:/formularioListarProdutos";
	}
	
}