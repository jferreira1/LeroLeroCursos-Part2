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

        <!-- Navbar-->
        <jsp:include page="templates/navbar.jsp"/>
        <!--  Fim da Navbar-->

        <div class="container">
            <div class="card text-center mt-5">
                
                <h5 class="card-title pt-5">Registro de Administrador</h5>
                <form class="card-body mx-auto row justify-content-center" id="formulario_admin" method="POST" action="http://localhost:8084/LeroLeroCursos/register_admin">

                  <label for="nome" generated="true" class="error text-danger col-7 text-left"></label>    
    
                  <div class="form-group input-group col-7">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                    <input class="form-control" name="nome" placeholder="Nome completo*" type="text">
                  </div>

                  <label for="login" generated="true" class="error text-danger col-7 text-left"></label>    

                  <div class="form-group input-group col-7">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-user"></i>
                      </span>
                    </div>
                    <input class="form-control" name="login" placeholder="Login*" type="text">
                  </div>

                  <label for="password" generated="true" class="error text-danger col-7 text-left"></label>    
    
                  <div class="form-group input-group col-7">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-lock"></i>
                      </span>
                    </div>
                    <input class="form-control" name="password" placeholder="Senha*" type="password">
                  </div>
                  
    
                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Registrar admin</button>
                  </div>
                </form>
                </article>
            </div>
        </div>


        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <!-- JQuery Validator -->
        <script>
          $(document).ready(function() {
             $("#formulario_admin").validate({
               
               rules: {
                 nome: {required:true, minlength:3, maxlength:50, lettersonly:true},
                 login: {required:true, minlength:3, maxlength:50},
                 password: {required: true, minlength:8, maxlength:255}
               },
               messages: {
                 nome: {required: "O preenchimento do nome é obrigatório.",
                        minlength: "Mínimo de 3 caracteres.",
                        maxlength: "Máximo de 50 caracteres.",
                        lettersonly: "Apenas letras.",
                      },
                 login: {required: "O preenchimento do login é obrigatório.",
                        minlength: "Mínimo de 3 caracteres.",
                        maxlength: "Máximo de 50 caracteres",
                      },
                 password: {required: "A senha é obrigatória.",
                        min: "Mínimo de 8 caracteres",
                        maxlength: "Máximo de 255 caracteres.",
                       },                         
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
