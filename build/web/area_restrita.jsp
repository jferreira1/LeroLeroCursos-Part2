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

            if (status != null) {
                Object usertype = session.getAttribute("usertype");
                String auxUsertype = (String) usertype;
                String auxStatus = (String) status;
                if (auxStatus.equals("ok")) {
                    if (auxUsertype.equals("aluno")) { %>
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
                  <div class="card h-100" id="aluno1">
                    <div class="img-wrapper" style="position:relative;">
                        <img src="assets/images/aluno_mktng.jpg" class="card-img-top" alt="Foto do Aluno" style="width:100%; height:auto;">
                        <div class="img-overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; text-align: center;">
                        <button class="btn col-2 offset-10">Foto</button>
                        </div>
                    </div>
                        <div class="card-body">
                        <h5 class="card-title">Nome do Aluno</h5>             
                        <i class="fas fa-map-marker-alt text-muted"> Cidade, Bairro</i>
                        <p class="card-text">Email</p>
                        <div class=" row justify-content-start">
                            <button type="button" class="btn col-8 offset-2 my-2">Atualizar dados</button>
                            <button type="button" class="btn col-8 offset-2 my-2">Matricular-se</button>
                            <button type="button" class="btn col-8 offset-2 my-2">Notas</button>
                            <button type="button" class="btn col-8 offset-2 my-2">Comentários</button>
                        </div>
                    </div>
                  </div>
                </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else if(auxUsertype.equals("instrutor")) {%>
        
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
                  <div class="card h-100" id="instrutor1">
                    <div class="img-wrapper" style="position:relative;">
                        <img src="assets/images/instrutores/<%= Instrutor.getId() %>.jpg" class="card-img-top" alt="Foto do Instrutor" style="width:100%; height:auto;">
                        <div class="img-overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; text-align: center;">
                        <button class="btn col-2 offset-10">Foto</button>
                        </div>
                    </div>
                        <div class="card-body">
                        <h5 class="card-title">Nome do Instrutor</h5>             
                        <i class="fas fa-map-marker-alt text-muted"> Valor/Hora </i>
                        <p class="card-text">Email</p>
                        <div class=" row justify-content-start">
                            <button type="button" class="btn col-8 offset-2 my-2">Atualizar dados</button>
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
        
        <%} else if(auxUsertype.equals("administrador")) {%>
        
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
                  <div class="card h-100" id="instrutor1">
                    <div class="img-wrapper" style="position:relative;">
                        <img src="assets/images/instrutores/<%= Instrutor.getId() %>.jpg" class="card-img-top" alt="Foto do Admin" style="width:100%; height:auto;">
                        <div class="img-overlay" style="position: absolute; top: 0; bottom: 0; left: 0; right: 0; text-align: center;">
                        <button class="btn col-2 offset-10">Foto</button>
                        </div>
                    </div>
                        <div class="card-body">
                        <h5 class="card-title">Nome do Admin</h5>             
                        <i class="fas fa-map-marker-alt text-muted"> id </i>
                        <p class="card-text">Login</p>
                        <div class=" row justify-content-start">
                            <button type="button" class="btn col-8 offset-2 my-2" href="http://localhost:8084/LeroLeroCursos/register">Alterar dados dos alunos</button>
                            <button type="button" class="btn col-8 offset-2 my-2" href="http://localhost:8084/LeroLeroCursos/register_instructor">Alterar dados dos instrutores</button>
                            <button type="button" class="btn col-8 offset-2 my-2" href="http://localhost:8084/LeroLeroCursos/register_courses">Alterar dados dos cursos</button>
                            <button type="button" class="btn col-8 offset-2 my-2" href="http://localhost:8084/LeroLeroCursos/register_class">Alterar dados das turmas</button>
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