package Controller.Instrutor;

import Model.Aluno;
import Model.DAO.AlunoDAO;
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
public class UpdateInstructor extends HttpServlet {

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
                if ((auxUsertype.equals("administrador")) || (auxUsertype.equals("instrutor"))) {
                    page = "update_instructor.jsp";
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
        instrutor.setLogin(request.getParameter("login"));
        instrutor.setExperiencia(request.getParameter("experiencia"));
        String auxSenha = (String) request.getAttribute("senha");
        instrutor.setSenha(auxSenha);
            
        InstrutorDAO dao = new InstrutorDAO();
        
        HttpSession session = request.getSession();
        String auxUsername = (String) session.getAttribute("username");
        int id = dao.getInstrutorPorLogin(auxUsername).getId();
        
        
        dao.update(id,instrutor);

        session.setAttribute("username", instrutor.getLogin());
        
        response.sendRedirect("./perfil");
    }


}
