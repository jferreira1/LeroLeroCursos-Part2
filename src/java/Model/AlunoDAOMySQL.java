/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Ferreira
 */
public class AlunoDAOMySQL implements AlunoDAO {
    private Connection conexao;

    public AlunoDAOMySQL() {
        try {
            // Executa a conexão com o banco de dados
            conexao = Conexao.criaConexao();
        } catch(Exception e) {
            System.out.println("Erro criação de conexao DAO");
            System.out.println(e);
        }
    }
    

    @Override
    public Aluno create(String cpf, String nome, String email, String celular, String login, String senha) {
        try {
            String sql = "INSERT INTO alunos(nome, cpf, email, celular, cidade, cep, bairro, endereco, login, senha) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conexao.prepareStatement(sql);
            
            ps.setString(1, nome);
            ps.setString(2, cpf);
            ps.setString(3, email);
            ps.setString(4, celular);
            ps.setString(5, cidade);
            ps.setString(6, cep);
            ps.setString(7, bairro);
            ps.setString(8, endereco);
            ps.setString(9, login);
            ps.setString(10, senha);
            
            preparedStatement.executeUpdate();
            preparedStatement.close();
        } catch( SQLException e ) {
            System.out.println("Erro de SQL: " + e.getMessage());
        }
        
        
        return new Aluno(id, cpf, nome, email, celular, login, senha);
    }

    @Override
    public void update(int id, Aluno aluno) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Aluno getByName(String name) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Aluno getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
