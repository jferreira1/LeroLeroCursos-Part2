<%@page import="Model.Administrador"%>
<%@page import="Model.DAO.AdministradorDAO"%>
<%@page import="Model.Aluno"%>
<%@page import="Model.DAO.AlunoDAO"%>
<%@page import="Model.DAO.InstrutorDAO"%>
<%@page import="Model.Instrutor"%>
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
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>

                <div class="container-fluid">
            <div class="text-secondary">
                <h1 class="text-left  font-weight-light">Área do aluno</h1>
            </div>

            <div class="row">

                <div class="col-lg-4 offset-lg-4 mb-4 mt-5">
                  <div class="card h-100" id="<%= aluno.getId()%>">
                    <div class="img-wrapper" style="position:relative;">
                        <img src="assets/images/alunos/<%= aluno.getId()%>.jpg" class="card-img-top" alt="Foto do <%= auxUsertype%>" style="width:100%; height:auto;">
                        <div class="img-overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; text-align: center;">
                        <button class="btn col-2 offset-10">Foto</button>
                        </div>
                    </div>
                        <div class="card-body">
                        <h5 class="card-title"><%=aluno.getNome()%></h5>             
                        <i class="fas fa-map-marker-alt text-muted"> <%= aluno.getCidade()%>, <%= aluno.getBairro()%></i>
                        <p class="card-text"><%= aluno.getEmail()%></p>
                        <div class=" row justify-content-start">
                            
                            <!-- Adicionar links -->
                            <a href="./update" type="button" class="btn btn-warning col-8 offset-2 my-2">Atualizar dados</a>
                            <a href="./enroll" type="button" class="btn btn-warning col-8 offset-2 my-2">Matricular-se</a>
                            <a href="./grades" type="button" class="btn btn-warning col-8 offset-2 my-2">Notas</a>
                            <a href="./update_comment" type="button" class="btn btn-warning col-8 offset-2 my-2">Comentário</a>
                        </div>
                    </div>
                  </div>
                </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else if(auxUsertype.equals("instrutor")) {
            InstrutorDAO daoInstrutor = new InstrutorDAO();
            Instrutor instrutor = daoInstrutor.getInstrutorPorLogin(auxUsername);
        %>
        
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <div class="text-secondary">
                <h1 class="text-left  font-weight-light">Área do Instrutor</h1>
            </div>

            <div class="row">

                <div class="col-lg-4 offset-lg-4 mb-4 mt-5">
                  <div class="card h-100" id="<%= instrutor.getId()%>">
                    <div class="img-wrapper" style="position:relative;">
                        <img src="assets/images/instrutores/<%= instrutor.getId() %>.jpg" class="card-img-top" alt="Foto do <%= auxUsertype%>" style="width:100%; height:auto;">
                        <div class="img-overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; text-align: center;">
                        <button class="btn col-2 offset-10">Foto</button>
                        </div>
                    </div>
                        <div class="card-body">
                        <h5 class="card-title"><%= instrutor.getNome()%></h5>             
                        <p class="text-muted"> R$<%= instrutor.getValor_hora()%>/hora </p>
                        <p class="card-text"><%= instrutor.getEmail()%></p>
                        <div class=" row justify-content-start">
                            
                            <!-- Adicionar links -->
                            <a href="./UpdateInstructor" type="button" class="btn btn-warning col-8 offset-2 my-2">Atualizar dados</a>
                            <button type="button" class="btn col-8 offset-2 my-2">Atribuir notas</button>
                            <button type="button" class="btn col-8 offset-2 my-2">Grade de aulas</button>
                        </div>
                    </div>
                  </div>
                </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else if(auxUsertype.equals("administrador")) {
            AdministradorDAO daoAdmin = new AdministradorDAO();
            Administrador admin = daoAdmin.getAdministradorPorLogin(auxUsername);
        %>
        
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <div class="text-secondary">
                <h1 class="text-left  font-weight-light">Área do Administrador</h1>
            </div>

            <div class="row">

                <div class="col-lg-4 offset-lg-4 mb-4 mt-5">
                  <div class="card h-100" id="admin.getId()">
                    <div class="img-wrapper" style="position:relative;">
                        <img src="assets/images/administradores/<%= admin.getId() %>.jpg" class="card-img-top" alt="Foto do <%=auxUsertype%>" style="width:100%; height:auto;">
                        <div class="img-overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; text-align: center;">
                        <button class="btn col-2 offset-10">Foto</button>
                        </div>
                    </div>
                        <div class="card-body">
                        <h5 class="card-title"><%= admin.getNome()%></h5>             
                        <i class="fas fa-map-marker-alt text-muted">id: <%= admin.getId()%> </i>
                        <p class="card-text text-muted"><%= admin.getLogin()%></p>
                        <div class=" row justify-content-start">
                            
                            <!-- Adicionar links -->
                            <a href="./AtualizarAlunos" type="button" class="btn btn-warning col-8 offset-2 my-2">Atualizar alunos</a>
                            <a href="./AtualizarInstrutores" type="button" class="btn btn-warning col-8 offset-2 my-2">Atualizar instrutores</a>
                            <a href="./AtualizarCursos" type="button" class="btn btn-warning col-8 offset-2 my-2">Atualizar cursos</a>
                            <a href="./AtualizarTurmas" type="button" class="btn btn-warning col-8 offset-2 my-2">Atualizar turmas</a>
                            <button type="button" class="btn col-8 offset-2 my-2">Visualizar notas</button>
                            <button type="button" class="btn col-8 offset-2 my-2">Visualizar grade de instrutores</button>
                            <button type="button" class="btn col-8 offset-2 my-2">Gerenciar imagens</button>
                        </div>
                    </div>
                  </div>
                </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else {
                response.sendRedirect("./login");
            }
            
        } else { response.sendRedirect("./login"); }
} else { response.sendRedirect("./login"); }
%>
    </body>
</html>