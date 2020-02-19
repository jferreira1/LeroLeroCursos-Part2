<%@page import="Model.Curso"%>
<%@page import="Model.DAO.MatriculaDAO"%>
<%@page import="Model.Matricula"%>
<%@page import="Model.DAO.CursoDAO"%>
<%@page import="Model.Turma"%>
<%@page import="Model.DAO.TurmaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Aluno"%>
<%@page import="Model.DAO.AlunoDAO"%>
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

        <!-- FontAwesome CSS -->
        <jsp:include page="templates/fontawesome.jsp"/>
        
        <!-- Bootstrap CSS -->
        <jsp:include page="templates/bootstrapcss.jsp"/>

        <!-- Documentation extras -->
        <jsp:include page="templates/docscss.jsp"/>

        <title>LeroLero | Cursos para aprimorar sua carreira</title>



    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
          <!-- Cards -->
          <div class="card-columns">
            <%
            TurmaDAO daoTurma = new TurmaDAO();
            MatriculaDAO daoMatricula = new MatriculaDAO();
            ArrayList<Matricula> listaMatriculas = daoMatricula.getLista();
            CursoDAO daoCurso = new CursoDAO();
            
            AlunoDAO daoAluno = new AlunoDAO();
            ArrayList<Aluno> listaAlunos = daoAluno.getLista();
            
            
            
            for(Aluno a : listaAlunos) { 
                
            
            %>
          
            <div class="col mb-4">
              <div class="card h-100" id="aluno1">
                  <img src="assets/images/alunos/<%= a.getId()%>.jpg" class="card-img-top" alt="Foto do aluno<%= a.getId()%>">
                <div class="card-body">
                  <h5 class="card-title"><%= a.getNome()%></h5>             
                  <i class="fas fa-map-marker-alt text-muted"> <%=a.getBairro()%>, <%=a.getCidade()%></i>
                  
                      <% if(a.getComentario() != null) {%>
                      <h5 class="mt-4">Comentário:</h5>
                      <blockquote class="blockquote text-right">
                        <p class="mb-0"><%=a.getComentario()%></p>
                        <footer class="blockquote-footer"><%=a.getNome()%> sobre a<cite tile="Curso"> LeroLeroCursos</footer>
                      </blockquote>
                      <%}%>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Cursos:
<%
                                 for(Matricula m : listaMatriculas) {
                                     if(a.getId() == m.getAlunos_id()) {
                                         Turma t = daoTurma.getTurmaPorId(m.getTurmas_id());
                                         Curso c = daoCurso.getCursoPorId(t.getCursos_id());
                            %>
                            <%= c.getNome() %>; 
                            <%}
                                     }
                                 
%>
                    </small>
                </div>
              </div>
            </div>
            
<%} %>
          </div>
          <!-- Fim dos Cards -->
</div>
        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>

    </body>
</html>