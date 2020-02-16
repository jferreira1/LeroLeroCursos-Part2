<%@page import="Model.DAO.InstrutorDAO"%>
<%@page import="Model.Turma"%>
<%@page import="Model.DAO.TurmaDAO"%>
<%@page import="Model.Curso"%>
<%@page import="java.util.ArrayList"%>
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

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <!-- Conteudo aqui -->
            
            
            
            <%
            CursoDAO daoCursos = new CursoDAO();
            TurmaDAO daoTurmas = new TurmaDAO();
            InstrutorDAO daoInstrutor = new InstrutorDAO();
            ArrayList<Turma> listaTurmas = daoTurmas.getLista();
            for(Turma t : listaTurmas) { 
            Curso c = daoCursos.getCursoPorId(t.getCursos_id());
            %>    

<!-- Cards -->
            <div class="card-columns">
                <div class="col mb-4">
                  <div class="card h-100">
                    <img src="assets/images/cursos/<%=c.getId()%>.jpg" class="card-img-top">
                    <div class="card-body">
                      <h5 class="card-title"><%=c.getNome()%></h5>
                      <div class="card-text">
                          <h5>Professor:</h5>
                          <p><%= daoInstrutor.getInstrutorPorId(t.getInstrutores_id())%></p>
                          <h5>Data de Início:</h5>
                          <p><%= t.getData_inicio()%></p>
                          <h5>Data de Término:</h5>
                          <p><%= t.getData_final()%></p>

                      </div>
                      
                      <p class="text-right">
                        <button type="button" class="btn" data-toggle="modal" data-target="#<%= c.getId() + "Modal"%>">Mais informações</button>
                      </p>
                    </div>
                  </div>
                </div>          
                
            
            <!-- Modal -->
    
            <div class="modal" tabindex="-1" role="dialog" id="<%= c.getId() + "Modal"%>">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title"><%= c.getNome()%></h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <h5>Ementa: </h5>
                    <p>
                        <%= c.getEmenta()%>
                    </p>
                    <h5>Requisitos: </h5>
                    <p>
                        <%= c.getRequisito()%>
                    </p>
                    <h5>Carga Horária: </h5>
                    <p>
                        <%= c.getCarga_horaria()%>
                    </p>
                    <h5>Preço: </h5>
                    <p>
                        R$ <%= c.getPreco()%>
                    </p>
                  
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>
          <%} %>
        
        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/> 
        
    </body>
</html>