package Controller.Admin;

import Model.Curso;
import Model.DAO.CursoDAO;
import Model.DAO.InstrutorDAO;
import Model.Instrutor;
import java.io.IOException;
import java.io.PrintWriter;
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
public class AtualizarCursos extends HttpServlet {

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
                    page = "register_courses(ADMIN).jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        
        CursoDAO dao = new CursoDAO();
        String auxSelecao = (String) request.getParameter("selecionar_curso");
        
        Curso cursoSelecionado = dao.getCursoPorNome(auxSelecao);
        
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

        dao.update(cursoSelecionado.getId(),curso);

        
        response.sendRedirect("./perfil");
    }


}
