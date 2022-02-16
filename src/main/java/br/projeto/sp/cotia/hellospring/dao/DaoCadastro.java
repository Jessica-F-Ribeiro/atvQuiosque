package br.projeto.sp.cotia.hellospring.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.projeto.sp.cotia.hellospring.model.Cadastro;

public class DaoCadastro {
	private Connection conexao;
	
	public DaoCadastro() {
		conexao = ConnectionFactory.conectar();
	}
	public void inserir(Cadastro cadastro) {
		String sql = "insert into tb_cadastro" +"(nome, endereco, telefone, email, prodInteresse, dataNascimento, genero)" +"values (?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cadastro.getNome());
			stmt.setString(2, cadastro.getEndereco());
			stmt.setString(3, cadastro.getTelefone());
			stmt.setString(4, cadastro.getEmail());
			stmt.setString(5, cadastro.getProdInteresse());
			stmt.setDate(6, new Date(cadastro.getDataNascimento().getTimeInMillis()));
			stmt.setString(7, cadastro.getGenero());
			stmt.execute();
			conexao.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	public void alterar(Cadastro cadastro) {
		String sql = "update tb_cadastro set nome = ?, data_validade = ?, preco = ?, estoque = ?, tipo_produto = ? where id = ?";
	}
}
