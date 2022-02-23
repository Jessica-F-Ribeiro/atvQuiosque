package br.projeto.sp.cotia.hellospring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.projeto.sp.cotia.hellospring.dao.DaoCadastro;
import br.projeto.sp.cotia.hellospring.model.Cadastro;

@Controller
public class CadastroController {
	
	@RequestMapping("formCadastro") // url
	public String form(Model model) {
		//model.addAttribute("tipos", TipoProduto.values());
		return "formcadastro"; // pasta view
	}
	
	@RequestMapping("salvarCadastro")
	public String salvarCadastro(Cadastro cadastro) {
		System.out.println(cadastro.getNome());
		System.out.println(cadastro.getEndereco());
		System.out.println(cadastro.getTelefone());
		System.out.println(cadastro.getEmail());
		System.out.println(cadastro.getProdInteresse());
		System.out.println(cadastro.getDataNascimento());
		System.out.println(cadastro.getGenero());
		
		DaoCadastro dao = new DaoCadastro();
		dao.inserir(cadastro);
		return "redirect:listarCadastro";
	}
	@RequestMapping("listarCadastro")
	public String listarCadastro(Model model) {
		DaoCadastro dao = new DaoCadastro();
		model.addAttribute("cadastros", dao.listar());
		return "listacadastro";
	}
	@RequestMapping("excluirCadastro")
	public String excluir(long idCadastro) {
		DaoCadastro dao = new DaoCadastro();
		dao.excluir(idCadastro);
		return "redirect:listarCadastro";
	}
	@RequestMapping("alterarCadastro")
	public String alterar(long idCadastro, Model model) {
		DaoCadastro dao = new DaoCadastro();
		model.addAttribute("cadastro", dao.consulta(idCadastro));
		return "forward:formCadastro";
	}
}
