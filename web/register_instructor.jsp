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
                
                <h5 class="card-title pt-5">Registro de Instrutor</h5>

                <form class="card-body mx-auto row" id="formulario_instrutor" method="POST">


                  <label for="nome" generated="true" class="error text-danger col-12 text-left"></label>
    
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                    <input class="form-control" id="nome" name="nome" placeholder="Nome completo*" type="text">
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
                    <input class="form-control" id="email" name="email" placeholder="Endereço de email*" type="email">
                  </div>

                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-dollar-sign"></i>
                      </span>
                    </div>
                    <input class="form-control" id="valor_hora" name="valor_hora" placeholder="Valor/Hora" type="number" min="0">
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
                    <input class="form-control" id="login" name="login" placeholder="Login*" type="text">
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
    
                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Registrar instrutor</button>
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
             $("#formulario_instrutor").validate({
               
               rules: {
                 nome: {required:true, minlength: 3, maxlength:50, lettersonly: true},
                 email: {required:true, email:true},
                 valor_hora: {min: 0, number:true},
                 login: {required:true, minlength: 3, maxlength:20},
                 senha: {required:true, minlength:8, maxlength:255},          
                 repeatPassword: {required:true, equalTo: senha},
               },
               messages: {
                 nome: {required: "O preenchimento do nome é obrigatório.",
                        minlength: "O nome deve conter ao menos 3 letras.",
                        maxlength: "O nome deve conter no máximo 50 letras.",
                        lettersonly: "Apenas letras."
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
                        minlength: "A senha deve conter ao menos 8 caracteres.",
                        maxlength: "A senha deve conter no máximo 255 caracteres."
                       },
                 repeatPassword: {required: "Por favor, confirme sua senha.",
                                  equalTo: "A senha digitada não corresponde."                          
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
