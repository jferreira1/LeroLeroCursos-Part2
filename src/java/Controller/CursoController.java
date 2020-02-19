package Controller;

import Model.Curso;
import Model.DAO.CursoDAO;
import java.io.IOException;
import java.text.SimpleDateFormat;
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
public class CursoController extends HttpServlet {

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
                    page = "register_course.jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Curso curso = new Curso();
        
        curso.setNome(request.getParameter("nome"));
        curso.setRequisito(request.getParameter("requisitos"));
        curso.setEmenta(request.getParameter("ementa"));
        
        String auxCarga_horaria = request.getParameter("carga_horaria");
        Integer carga_horaria = Integer.parseInt(auxCarga_horaria);
        curso.setCarga_horaria(carga_horaria);
        
        String auxPreco = request.getParameter("preco");
        Integer preco = Integer.parseInt(auxPreco);
        curso.setPreco(preco);

        
        String auxData_inicio = request.getParameter("data_inicio");        
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");

          
        CursoDAO dao = new CursoDAO();
        dao.create(curso);
                
        RequestDispatcher resposta = request.getRequestDispatcher("/perfil");
        resposta.forward(request, response);
   }
}

