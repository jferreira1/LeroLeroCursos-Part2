package Controller;

import Model.DAO.AdministradorDAO;
import Model.DAO.AlunoDAO;
import Model.DAO.InstrutorDAO;
import Model.*;
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
        
        String str = "";        
        // Verifica se o usuário é um aluno e valida a senha.
        AlunoDAO aluno_dao = new AlunoDAO();
        Aluno aluno = aluno_dao.getAlunoPorLogin(login);
        if (aluno != null) {
            if (senha.equals(aluno.getSenha())) {
                
                HttpSession session = request.getSession();
                session.setAttribute("username", aluno.getLogin());
                session.setAttribute("logged-in", "true");
                
                RequestDispatcher resposta = request.getRequestDispatcher("");
            }
            else {
                
                RequestDispatcher resposta = request.getRequestDispatcher("login.jsp");
                resposta.forward(request, response);
            }
        }       
        // Verifica se o usuário é um instrutor e valida a senha.
        InstrutorDAO instrutor_dao = new InstrutorDAO();
        Instrutor instrutor = instrutor_dao.getInstrutorPorLogin(login);
        if (instrutor != null) {
            if (senha.equals(instrutor.getSenha())) {
                
                HttpSession session = request.getSession();
                session.setAttribute("username", instrutor.getLogin());
                session.setAttribute("logged-in", "true");
                
                RequestDispatcher resposta = request.getRequestDispatcher("");
            }
            else {
                
                RequestDispatcher resposta = request.getRequestDispatcher("login.jsp");
                resposta.forward(request, response);
                
            }
        }       
        // Verifica se o usuário é um administrador e valida a senha.
        AdministradorDAO admin_dao = new AdministradorDAO();
        Administrador administrador = admin_dao.getAdministradorPorLogin(login);
        if (administrador != null) {
            if (senha.equals(administrador.getSenha())) {
                                
                HttpSession session = request.getSession();
                session.setAttribute("username", administrador.getLogin());
                session.setAttribute("logged-in", "true");
                
                RequestDispatcher resposta = request.getRequestDispatcher("");
            }
            else {
                
                RequestDispatcher resposta = request.getRequestDispatcher("login.jsp");
                resposta.forward(request, response);

            }
        }
        if ((aluno == null) && (instrutor == null) && (administrador == null)) {
            
            RequestDispatcher resposta = request.getRequestDispatcher("login.jsp");
            resposta.forward(request, response);
        }
        
        
    }

}
