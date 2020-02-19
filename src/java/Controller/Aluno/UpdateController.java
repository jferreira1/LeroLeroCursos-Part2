package Controller.Aluno;

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
public class UpdateController extends HttpServlet {

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
                if ((auxUsertype.equals("administrador")) || (auxUsertype.equals("aluno"))) {
                    page = "update.jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher("update.jsp");
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
        String auxSenha = (String) request.getAttribute("senha");
        aluno.setSenha(auxSenha);
            
        AlunoDAO dao = new AlunoDAO();
        
        HttpSession session = request.getSession();
        String auxUsername = (String) session.getAttribute("username");
        int id = dao.getAlunoPorLogin(auxUsername).getId();
        
        
        dao.update(id,aluno);

        session.setAttribute("username", aluno.getLogin());
        
        response.sendRedirect("./perfil");
    }


}
