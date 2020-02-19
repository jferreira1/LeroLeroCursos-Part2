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
public class UpdateCommentController extends HttpServlet {

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
                    page = "update_comment.jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        
        Aluno aluno = new Aluno();
        aluno.setComentario(request.getParameter("comentario"));
            
        AlunoDAO dao = new AlunoDAO();
        
        HttpSession session = request.getSession();
        String auxUsername = (String) session.getAttribute("username");
        int id = dao.getAlunoPorLogin(auxUsername).getId();

        dao.update(id,aluno);
        
        response.sendRedirect("./perfil");
    }


}
