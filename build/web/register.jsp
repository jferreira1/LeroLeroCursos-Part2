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
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
        <!-- Navbar-->
        <jsp:include page="templates/navbar.jsp"/>
        <div class="container">
          
          <div class="card text-center mt-5 row">
            <article class="mx-auto col-12" style="max-width: 400px;">
            <h5 class="card-title pt-5">Crie sua conta</h5>
            <p>Comece com sua conta gratuita</p>
            <form class="card-body mx-auto" method="POST" id="formulario_registro">

              <label for="nome" generated="true" class="error text-danger col-12 text-left"></label> 

              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-user"></i>
                  </span>
                </div>
                <input class="form-control" name="nome" placeholder="Nome completo*" type="text">
              </div>

              <label for="email" generated="true" class="error text-danger col-12 text-left"></label>

              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-envelope"></i>
                  </span>
                </div>
                <input class="form-control" name="email" placeholder="Endereço de email*" type="email">
              </div>

              <label for="login" generated="true" class="error text-danger col-12 text-left"></label>

              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-user"></i>
                  </span>
                </div>
                <input class="form-control" name="login" placeholder="Login*" type="text">
              </div>

              <label for="password" generated="true" class="error text-danger col-12 text-left"></label>

              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-lock"></i>
                  </span>
                </div>
                <input class="form-control" id="password" name="password" placeholder="Senha*" type="password">
              </div>

              <label for="repeatPassword" generated="true" class="error text-danger col-12 text-left"></label>

              <div class="form-group input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">
                    <i class="fa fa-lock"></i>
                  </span>
                </div>
                <input class="form-control" name="repeatPassword" placeholder="Repita a senha*" type="password">
              </div>
              

              <div class="form-group">
                <button class="btn btn-warning btn-block" type="submit">Criar conta</button>
              </div>
              <p>
                Possui uma conta?
                <a href="./login.html" class="text-warning">Acessar</a>
              </p>
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
             $("#formulario_registro").validate({
               
               rules: {
                 nome: {required:true, minlength:3, maxlength:50, lettersonly:true},
                 email: {required:true, email:true},
                 login: {required:true, minlength:3, maxlength:50},
                 password: {required: true, minlength:8, maxlength:255},
                 repeatPassword: {required: true, equalTo: "#password"}
               },
               messages: {
                 nome: {required: "Nome obrigatório.",
                        minlength: "Mínimo de 3 caracteres.",
                        maxlength: "Máximo de 50 caracteres.",
                        lettersonly: "Apenas letras.",
                      },
                 email: {required: "Email obrigatório.",
                         email: "Insira um email válido."},
                 login: {required: "Login obrigatório.",
                        minlength: "Mínimo de 3 caracteres.",
                        maxlength: "Máximo de 50 caracteres",
                      },
                 password: {required: "A senha é obrigatória.",
                        min: "Mínimo de 8 caracteres",
                        maxlength: "Máximo de 255 caracteres.",
                       },
                 repeatPassword: {required: "Confirme sua senha.",
                                  equalTo: "As senhas não correspondem."}                        
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