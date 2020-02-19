<%@page import="Model.Turma"%>
<%@page import="Model.DAO.TurmaDAO"%>
<%@page import="Model.Instrutor"%>
<%@page import="Model.Curso"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DAO.InstrutorDAO"%>
<%@page import="Model.DAO.CursoDAO"%>
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

        <!-- Documentation extras -->
        <jsp:include page="templates/docscss.jsp"/>

        <title>LeroLero | Cursos para aprimorar sua carreira</title>


    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- Navbar-->
        <jsp:include page="templates/navbar.jsp"/>
        <div class="container-fluid">
            <div>
                <h1 class="text-center font-weight-light pb-4 text-secondary">Nossos instrutores</h1>
            </div>
            <div class="card-columns">
            <%
            TurmaDAO daoTurma = new TurmaDAO();
            ArrayList<Turma> listaTurmas = daoTurma.getLista();
            
            InstrutorDAO daoInstrutor = new InstrutorDAO();
            ArrayList<Instrutor> listaInstrutores = daoInstrutor.getLista();
            
            CursoDAO daoCurso = new CursoDAO();
            
            for(Instrutor i : listaInstrutores) { 
                
            
            %>    

                <div class="col mb-4">
                  <div class="card h-100">
                    <img src="assets/images/instrutores/<%=i.getId()%>.jpg" class="card-img-top" alt="Foto do <%=i.getNome()%>">
                    <div class="card-body">
                      <h5 class="card-title"><%=i.getNome()%></h5>
                      <p class="card-text text-justify"><%=i.getExperiencia()%></p>
                      <p class="text-muted"><%= i.getEmail()%></p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Cursos: 
                            <%
                                 for(Turma t : listaTurmas) {
                                     if(i.getId() == t.getInstrutores_id()) {
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
</div>
        <!-- JQuery -->
        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script> 
        <script src="assets/js/jquery.mask.min.js"></script> 

        <!-- Bootstrap 4-->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>  

    </body>
</html>