package Controller.Aluno;

import Model.DAO.AlunoDAO;
import Model.DAO.MatriculaDAO;
import Model.Matricula;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
public class EnrollController extends HttpServlet {

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
                    page = "enroll.jsp";
                }
            }
            
        }
        
        RequestDispatcher resposta = request.getRequestDispatcher(page);
        resposta.forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Matricula matricula = new Matricula();
        HttpSession session = request.getSession();
        
        String auxTurmas_id = request.getParameter("turmas_id");
        int turmas_id = Integer.parseInt(auxTurmas_id);
        matricula.setTurmas_id(turmas_id);

        
        String auxAlunos_id = request.getParameter("alunos_id");
        AlunoDAO alunoDAO = new AlunoDAO();
        String username = (String) session.getAttribute("username");
        int alunos_id = alunoDAO.getAlunoPorLogin(username).getId();
        matricula.setAlunos_id(alunos_id);
        
        Calendar c = Calendar.getInstance();
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH);
        int day = c.get(Calendar.DAY_OF_MONTH);
        Date sqlDate = new Date(year,month,day);
        matricula.setData_matricula(sqlDate);
          
        MatriculaDAO dao = new MatriculaDAO();
        dao.create(matricula);
                
        response.sendRedirect("./perfil");
    }


}
