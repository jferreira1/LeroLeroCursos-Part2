package Controller;

import Model.DAO.InstrutorDAO;
import Model.Instrutor;
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
public class InstrutorController extends HttpServlet {

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
                if (auxUsertype.equals("administrador")) {
                    page = "register_instructor.jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Instrutor instrutor = new Instrutor();
        instrutor.setNome(request.getParameter("nome"));
        instrutor.setEmail(request.getParameter("email"));
        String auxValor_hora = request.getParameter("valor_hora");
        Integer valor_hora = Integer.parseInt(auxValor_hora);
        instrutor.setValor_hora(valor_hora);
        instrutor.setLogin(request.getParameter("login"));
        instrutor.setExperiencia(request.getParameter("experiencia"));
        
        String auxSenha = (String) request.getAttribute("senha");
        instrutor.setSenha(auxSenha);
            
        InstrutorDAO dao = new InstrutorDAO();
        dao.create(instrutor);
        
        HttpSession session = request.getSession();
        session.setAttribute("usertype", instrutor);
        session.setAttribute("username", instrutor.getLogin());
        session.setAttribute("status", "ok");
                
        RequestDispatcher resposta = request.getRequestDispatcher("/perfil");
        resposta.forward(request, response);
   }
}

