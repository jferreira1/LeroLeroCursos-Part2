package Controller.Admin;

import Model.Curso;
import Model.DAO.CursoDAO;
import Model.DAO.InstrutorDAO;
import Model.DAO.TurmaDAO;
import Model.Instrutor;
import Model.Turma;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
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
public class AtualizarTurmas extends HttpServlet {

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
                    page = "register_classes(ADMIN).jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        
        TurmaDAO dao = new TurmaDAO();
        String auxSelecao = (String) request.getParameter("selecionar_turma");
        int id = Integer.parseInt(auxSelecao);
        
        Turma turmaSelecionada = dao.getTurmaPorId(id);
        
        Turma turma = new Turma();
        
        String auxInstrutores_id = request.getParameter("instrutores_id");
        Integer instrutores_id = Integer.parseInt(auxInstrutores_id);
        turma.setInstrutores_id(instrutores_id);
        
        String auxCursos_id = request.getParameter("cursos_id");
        Integer cursos_id = Integer.parseInt(auxCursos_id);
        turma.setCursos_id(cursos_id);
        
        String auxData_inicio = request.getParameter("data_inicio");        
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");

        try {
            java.util.Date utilDate = format.parse(auxData_inicio);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            turma.setData_inicio(sqlDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        String auxData_final = request.getParameter("data_final");        
        SimpleDateFormat format2 = new SimpleDateFormat("yyyy/MM/dd");

        try {
            java.util.Date utilDate = format.parse(auxData_final);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            turma.setData_inicio(sqlDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        dao.update(turmaSelecionada.getId(),turma);

        
        response.sendRedirect("./perfil");
    }


}
