package Controller;

import Model.Administrador;
import Model.DAO.AdministradorDAO;
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
public class AdminController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher resposta = request.getRequestDispatcher("register_admin.jsp");
        resposta.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Administrador admin = new Administrador();
        admin.setNome(request.getParameter("nome"));
        admin.setLogin(request.getParameter("login"));
        
        String auxSenha = (String) request.getAttribute("senha");
        admin.setSenha(auxSenha);
            
        AdministradorDAO dao = new AdministradorDAO();
        dao.create(admin);
        
        HttpSession session = request.getSession();
        session.setAttribute("usertype", admin);
        session.setAttribute("username", admin.getLogin());
        session.setAttribute("status", "ok");
                
        RequestDispatcher resposta = request.getRequestDispatcher("/perfil");
        resposta.forward(request, response);
   }
}

