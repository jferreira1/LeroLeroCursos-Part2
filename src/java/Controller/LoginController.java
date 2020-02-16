package Controller;

import Model.DAO.AdministradorDAO;
import Model.DAO.AlunoDAO;
import Model.DAO.InstrutorDAO;
import Model.*;
import java.io.IOException;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        
        HttpSession session = request.getSession();
        Object status = session.getAttribute("status");
        if (status != null) {
            String auxStatus = (String) status;
            if(auxStatus.equals("ok")) {
                response.sendRedirect("./perfil");
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher("login.jsp");
        resposta.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        
        String login = request.getParameter("login");
        String auxSenha = (String) request.getAttribute("senha");
               
        // Verifica se o usuário é um aluno e valida a senha.
        AlunoDAO aluno_dao = new AlunoDAO();
        Aluno aluno = aluno_dao.getAlunoPorLogin(login);
        if (aluno != null) {
            if (auxSenha.equals(aluno.getSenha())) {
                
                HttpSession session = request.getSession();
                session.setAttribute("usertype", "aluno");
                session.setAttribute("username", aluno.getLogin());
                session.setAttribute("status", "ok");
                
                RequestDispatcher resposta = request.getRequestDispatcher("");
                resposta.forward(request, response);
            }
            else {
                response.sendRedirect("./login");
            }
        }       
        // Verifica se o usuário é um instrutor e valida a senha.
        InstrutorDAO instrutor_dao = new InstrutorDAO();
        Instrutor instrutor = instrutor_dao.getInstrutorPorLogin(login);
        if (instrutor != null) {
            if (auxSenha.equals(instrutor.getSenha())) {
                
                HttpSession session = request.getSession();
                session.setAttribute("usertype", "instrutor");
                session.setAttribute("username", instrutor.getLogin());
                session.setAttribute("status", "ok");
                
                RequestDispatcher resposta = request.getRequestDispatcher("");
                resposta.forward(request, response);
            }
            else {
                response.sendRedirect("./login");    
            }
        }       
        // Verifica se o usuário é um administrador e valida a senha.
        AdministradorDAO admin_dao = new AdministradorDAO();
        Administrador administrador = admin_dao.getAdministradorPorLogin(login);
        if (administrador != null) {
            if (auxSenha.equals(administrador.getSenha())) {
                                
                HttpSession session = request.getSession();
                session.setAttribute("usertype", "administrador");
                session.setAttribute("username", administrador.getLogin());
                session.setAttribute("status", "ok");
                
                RequestDispatcher resposta = request.getRequestDispatcher("");
                resposta.forward(request, response);
            }
            else {
                response.sendRedirect("./login");
            }
        }
        if ((aluno == null) && (instrutor == null) && (administrador == null)) {
            response.sendRedirect("./login");
        }
        
        
    }

}
