package Controller;

import Model.DAO.MatriculaDAO;
import Model.Matricula;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
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
public class MatriculaController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher resposta = request.getRequestDispatcher("register_enrollment.jsp");
        resposta.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Matricula matricula = new Matricula();
        
        String auxTurmas_id = request.getParameter("turmas_id");
        Integer turmas_id = Integer.parseInt(auxTurmas_id);
        matricula.setTurmas_id(turmas_id);
        
        String auxAlunos_id = request.getParameter("alunos_id");
        Integer alunos_id = Integer.parseInt(auxAlunos_id);
        matricula.setAlunos_id(alunos_id);
        
        String auxData_matricula = request.getParameter("data_matricula");        
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");

        try {
            java.util.Date utilDate = format.parse(auxData_matricula);
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            matricula.setData_matricula(sqlDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        
        String auxNota = request.getParameter("nota");
        Float nota = Float.parseFloat(auxNota);
        matricula.setNota(nota);
          
        MatriculaDAO dao = new MatriculaDAO();
        dao.create(matricula);
                
        RequestDispatcher resposta = request.getRequestDispatcher("/perfil");
        resposta.forward(request, response);
   }
}

