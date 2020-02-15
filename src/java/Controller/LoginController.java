package Controller;

import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ferreira
 */
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        
        String login = request.getParameter("login");
        String senha = request.getParameter("senha");
        
        String str;
        Aluno aluno = new Aluno();
        AlunoDAO alunoDAO = new AlunoDAO();
        alunoDAO.getAlunoPorLogin(login);
        if (aluno != null) {
            if (senha.equals(aluno.getSenha())) {
                str = "Login realizado com sucesso.";
            }
            else {
                str = "Senha inválida.";
            }
        }
        Instrutor instrutor = new InstrutorDAO().getInstrutorPorLogin(login);
        if (instrutor != null) {
            str = "Login realizado com sucesso.";

        }
        else {
            str = "Senha inválida.";

        }
        
        Administrador administrador = new AdministradorDAO().getAdministradorPorLogin(login);
        if (administrador != null) {
            str = "Login realizado com sucesso.";

        }
        else {
            str = "Senha inválida.";

        }
        
    }

}
