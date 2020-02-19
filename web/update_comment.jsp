<%@page import="Model.DAO.AlunoDAO"%>
<%@page import="Model.Aluno"%>
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
                
                <h5 class="card-title pt-5">Comentário</h5>
                <p>Compartilhe sua opinião sobre a LeroLeroCursos</p>
                <article>
                <form class="card-body mx-auto row" id="form_comment" method="POST" action="http://localhost:8084/LeroLeroCursos/update_comment">

                  <label for="comentario" generated="true" class="error text-danger col-12 text-left"></label>    
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-comments"></i>
                      </span>
                    </div>                    
                      <textarea class="form-control" id="comentario" name="comentario" placeholder="Compartilhe sua opinião..." type="text" rows="6"><% if(aluno.getComentario() != null) {%><%=aluno.getComentario()%><%}%></textarea>
                  </div>      
                  
                  
    
                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Atualizar comentário</button>
                  </div>
                </form>
                </article>
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

<!-- JQuery Validator -->
        <script>
          $(document).ready(function() {
             $("#form_comment").validate({
               
               rules: {

                 comentario: {maxlength:255},
         
               },
               messages: {

                 comentario: {maxlength: "Não ultrapasse o limite de 255 caracteres."},

             
               },
               
               submitHandler: function(form) {
                 form.submit();
               },
                
                })
                
             }
             
             );
      </script>
        

    </body>
</html>