package Controller.Admin;

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
public class AtualizarAlunos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        String page = "./perfil";
        
        HttpSession session = request.getSession();
        Object status = session.getAttribute("status");
        Object usertype = session.getAttribute("usertype");
        
        if (status != null) {
            String auxStatus = (String) status;
            if(auxStatus.equals("ok")) {
                String auxUsertype = (String) usertype;
                if ((auxUsertype.equals("administrador"))) {
                    page = "register(ADMIN).jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        
        AlunoDAO dao = new AlunoDAO();
        String auxSelecao = (String) request.getParameter("selecionar_aluno");
        Aluno alunoSelecionado = dao.getAlunoPorLogin(auxSelecao);
        
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
        String auxSenha = (String) request.getAttribute("senha");
        aluno.setSenha(auxSenha);

        dao.update(alunoSelecionado.getId(),aluno);

        
        response.sendRedirect("./perfil");
    }


}
