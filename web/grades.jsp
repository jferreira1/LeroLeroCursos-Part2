<%@page import="Model.Aluno"%>
<%@page import="Model.DAO.AlunoDAO"%>
<%@page import="Model.Turma"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DAO.TurmaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="pt-br"> <!--<![endif]-->
    <head>
        <!-- Meta tags-->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Favicons-->
        <jsp:include page="templates/favicons.jsp"/>

        <!-- Bootstrap CSS -->
        <jsp:include page="templates/bootstrapcss.jsp"/>

        <!-- FontAwesome CSS -->
        <jsp:include page="templates/fontawesome.jsp"/>

        <!-- Documentation extras -->
        <jsp:include page="templates/docscss.jsp"/>

        <title>LeroLero | Cursos para aprimorar sua carreira</title>


    </head>
    <body>
        <%

            
            Object status = session.getAttribute("status");
            
            Object username = session.getAttribute("username");
            String auxUsername = (String) username;

            if (status != null) {
                Object usertype = session.getAttribute("usertype");
                String auxUsertype = (String) usertype;
                String auxStatus = (String) status;
                if (auxStatus.equals("ok")) {
                    if (auxUsertype.equals("aluno")) { 
                        AlunoDAO daoAluno = new AlunoDAO();
                        Aluno aluno = daoAluno.getAlunoPorLogin(auxUsername);
                    %>
      <jsp:include page="templates/navbar.jsp"/>

        <div class="container">
            <div class="card text-center mt-5">
                
                <h5 class="card-title pt-5">Notas</h5>
                
    
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-graduation-cap"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_turma">
                        <option>Selecionar Turma*</option>
                        <%
                        TurmaDAO daoTurmas = new TurmaDAO();
                        ArrayList<Turma> listaTurmas = daoTurmas.getLista();
                        for(Turma t : listaTurmas) { %>    
                            <option>  <%= t.getId()%> </option>
                      <%}
                        %>
                    </select>   
                  </div>
                      
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_aluno">
                        <option><%= aluno.getNome()%></option>
                    </select>
                  </div>


                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Matricular</button>
                  </div>
                </form>
                </article>
            </div>
        </div>

        
<%} else {
                response.sendRedirect("./login");
            }
            
        } else { response.sendRedirect("./login"); }
} else { response.sendRedirect("./login"); }
%>  
        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
    </body>
</html>
