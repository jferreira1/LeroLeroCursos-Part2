<%@page import="Model.DAO.InstrutorDAO"%>
<%@page import="Model.Instrutor"%>
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
                    if (auxUsertype.equals("instrutor")) { 
                        InstrutorDAO daoInstrutor = new InstrutorDAO();
                        Instrutor instrutor = daoInstrutor.getInstrutorPorLogin(auxUsername);
                    %>
        <jsp:include page="templates/navbar.jsp"/>

        <div class="container">
            <div class="card text-center mt-5">
                
                <h5 class="card-title pt-5">Atualizar dados</h5>

                <form class="card-body mx-auto row" id="formulario_instrutor" method="POST" action="http://localhost:8084/LeroLeroCursos/UpdateInstructor">


                  <label for="nome" generated="true" class="error text-danger col-12 text-left"></label>
    
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                      <input class="form-control" id="nome" name="nome" placeholder="Nome completo*" type="text" value="<%=instrutor.getNome()%>">
                  </div>

                  <label for="email" generated="true" class="error text-danger offset-0 col-6 text-left mx-0 pl-15"></label>
                  <label for="valor_hora" generated="true" class="error text-danger offset-6 col-6 text-left m-0 pl-15"></label>
                  <div class="col-12"></div>
                      
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-envelope"></i>
                      </span>
                    </div>
                    <input class="form-control" id="email" name="email" placeholder="Endereço de email*" type="email" value="<%=instrutor.getEmail()%>">
                  </div>

                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-dollar-sign"></i>
                      </span>
                    </div>
                    <input class="form-control" id="valor_hora" name="valor_hora" placeholder="Valor/Hora" type="number" min="<%=instrutor.getValor_hora()%>" max="<%=instrutor.getValor_hora()%>" value="<%=instrutor.getValor_hora()%>">
                  </div>

                  <label for="login" generated="true" class="error text-danger offset-0 col-4 text-left mx-0 pl-15"></label>
                  <label for="senha" generated="true" class="error text-danger offset-4 col-4 text-left m-0 pl-15"></label>
                  <label for="repeatPassword" generated="true" class="error text-danger offset-8 col-4 text-left m-0 pl-15"></label>
                  <div class="col-12"></div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-user"></i>
                      </span>
                    </div>
                    <input class="form-control" id="login" name="login" placeholder="Login*" type="text" value="<%=instrutor.getLogin()%>">
                  </div>
    
                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                      </span>
                    </div>
                    <input class="form-control" id="senha" name="senha" placeholder="Senha*" type="password">
                  </div>
    
                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                      </span>
                    </div>
                    <input class="form-control" id="repeatPassword" name="repeatPassword" placeholder="Repita a senha*" type="password">
                  </div>
                  
                  <label for="experiencia" generated="true" class="error text-danger col-12 text-left"></label>    
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-comments"></i>
                      </span>
                    </div>   
                  <textarea class="form-control" id="experiencia" name="experiencia" placeholder="Compartilhe sua experiência..." type="text" rows="6"><% if(instrutor.getExperiencia() != null) {%><%=instrutor.getExperiencia()%><%}%></textarea>
                  </div>
                  
                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Atualizar dados</button>
                  </div>

                </form>
                </article>
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
             $("#formulario_instrutor").validate({
               
               rules: {
                 nome: {required:true, minlength: 3, maxlength:50},
                 email: {required:true, email:true},
                 valor_hora: {min: 0, number:true},
                 login: {required:true, minlength: 3, maxlength:20},
                 senha: {required:true, minlength:6, maxlength:255},          
                 repeatPassword: {required:true, equalTo: senha},
                 comentario: {maxlength:255},
                 
               },
               messages: {
                 nome: {required: "O preenchimento do nome é obrigatório.",
                        minlength: "O nome deve conter ao menos 3 letras.",
                        maxlength: "O nome deve conter no máximo 50 letras.",
                       },
                 email: {required: "O preenchimento do email é obrigatório.",
                        email: "Por favor, insira um email válido."                          
                       },
                 valor_hora: {min: "Insira um valor positivo.",
                              number: "Insira apenas número."},
                 login: {required: "O preenchimento do login é obrigatório.",
                        minlength: "O login deve conter ao menos 3 caracteres.",
                        maxlength: "O login deve conter no máximo 20 caracteres."
                       },
                 senha: {required: "O preenchimento da senha é obrigatório.",
                        minlength: "A senha deve conter ao menos 6 caracteres.",
                        maxlength: "A senha deve conter no máximo 255 caracteres."
                       },
                 repeatPassword: {required: "Por favor, confirme sua senha.",
                                  equalTo: "A senha digitada não corresponde."                          
                       },
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