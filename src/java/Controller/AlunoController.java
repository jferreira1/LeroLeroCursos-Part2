package Controller;

import Model.Aluno;
import Model.DAO.AlunoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ferreira
 */
public class AlunoController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher resposta = request.getRequestDispatcher("register.jsp");
        resposta.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Aluno aluno = new Aluno();
        aluno.setNome(request.getParameter("nome"));
        aluno.setCpf(request.getParameter("cpf"));
        aluno.setEmail(request.getParameter("email"));
        aluno.setCelular(request.getParameter("celular"));
        aluno.setCidade(request.getParameter("cidade"));
        aluno.setCep(request.getParameter("cep"));
        aluno.setBairro(request.getParameter("bairro"));
        aluno.setEndereco(request.getParameter("endereco"));
        aluno.setLogin(request.getParameter("login"));
        aluno.setSenha(request.getParameter("senha"));
            
        AlunoDAO dao = new AlunoDAO();
        dao.create(aluno);
        
        HttpSession session = request.getSession();
        session.setAttribute("usertype", aluno);
        session.setAttribute("username", aluno.getLogin());
        session.setAttribute("status", "ok");
                
        RequestDispatcher resposta = request.getRequestDispatcher("/perfil");
        resposta.forward(request, response);
   }
}

