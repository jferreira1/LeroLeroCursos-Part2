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

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container">
            <div class="card text-center mt-5">    
                
                <h5 class="card-title pt-5">Crie sua conta</h5>
                <p>Comece com sua conta gratuita</p>
                <article>
                <form class="card-body mx-auto row" id="formulario_aluno" method="POST">

                  <label for="nome" generated="true" class="error text-danger col-12 text-left"></label>    
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>                    
                    <input class="form-control" id="nome" name="nome" placeholder="Nome completo*" type="text">
                  </div>      
                  
                  <label for="cpf" generated="true" class="error text-danger offset-0 col-6 text-left mx-0 pl-15"></label>
                  <label for="email" generated="true" class="error text-danger offset-6 col-6 text-left m-0 pl-15"></label>
                  <div class="col-12"></div>
                  
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-id-card"></i>
                      </span>
                    </div>
                    <input class="form-control" id="cpf" name="cpf" placeholder="CPF*" type="text" id="cpf">
                  </div>
                  
                  
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-envelope"></i>
                      </span>
                    </div>
                    <input class="form-control" id="email" name="email" placeholder="Endereço de email*" type="email">
                  </div>
                  
                  
                  <label for="celular" generated="true" class="error text-danger col-4 text-left m-0 pl-15"></label>
                  <label for="cidade" generated="true" class="error text-danger col-4 offset-6 text-left m-0 pl-15"></label>
                  <label for="cep" generated="true" class="error text-danger col-4 ml-auto  text-left m-0 pl-15"></label>

                  <div class="col-12"></div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-mobile-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" id="celular" name="celular" placeholder="Celular*" type="tel">
                  </div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-city"></i>
                      </span>
                    </div>
                    <input class="form-control" id="cidade" name="cidade" placeholder="Cidade" type="text">
                  </div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-map-marked-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" id="cep" name="cep" placeholder="CEP" type="text">
                  </div>

                  <label for="bairro" generated="true" class="error text-danger col-4 text-left m-0 pl-15"></label>
                  <label for="endereco" generated="true" class="error text-danger col-8 offset-4 text-left m-0 pl-15"></label>
                  
                  <div class="col-12"></div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-map-marked-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" id="bairro" name="bairro" placeholder="Bairro" type="text">
                  </div>

                  <div class="form-group input-group col-8">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-map-marked-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" id="endereco" name="endereco" placeholder="Endereço" type="text">
                  </div>

                  <label for="login" generated="true" class="error text-danger col-4 text-left m-0 pl-15"></label>
                  <label for="senha" generated="true" class="error text-danger col-4 offset-4 text-left m-0 pl-15"></label>
                  <label for="confirmPassword" generated="true" class="error text-danger col-4 offset-8 text-left m-0 pl-15"></label>
                  
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
                    <input class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Repita a senha*" type="password">
                  </div>
    
                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Criar conta</button>
                  </div>
                  <p class=" col-12">
                    Possui uma conta?
                    <a href="./login.jsp" class="text-warning">Acessar</a>
                  </p>
                </form>
                </article>
            </div>
        </div>
            
        </div>

        

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>  
         
        <!-- JQuery Validator -->
        <script>
            $(document).ready(function() {
               $("#formulario_aluno").validate({
                 
                 rules: {
                   nome: {required:true, minlength: 3, maxlength:50, lettersonly:true},
                   cpf: {required:true, digits:true,minlength: 11, maxlength:11},
                   email: {required:true, email:true},
                   celular: {required:true, digits: true, minlength: 10, maxlength:14},
                   login: {required:true, minlength: 3, maxlength:20},
                   senha: {required:true, minlength:8, maxlength:255},
                   
                   endereco: {minlength: 5, maxlength:50},
                   cidade: {minlength: 3, maxlength:30, lettersonly:true},
                   bairro: {minlength: 3, maxlength:30, lettersonly:true},
                   cep: {digits:true, minlength: 8, maxlength:9},

                   confirmPassword: {required:true, equalTo: senha},
                 },
                 messages: {
                   nome: {required: "O preenchimento do nome é obrigatório.",
                          minlength: "O nome deve conter ao menos 3 letras.",
                          maxlength: "O nome deve conter no máximo 50 letras.",
                          lettersonly: "Apenas letras."
                         },
                   cpf: {required: "O preenchimento do cpf é obrigatório.",
                          digits: "Por favor, apenas dígitos.",
                          minlength: "O cpf deve conter 11 caracteres.",
                          maxlength: "O cpf deve conter 11 caracteres."
                         },
                   email: {required: "O preenchimento do email é obrigatório.",
                          email: "Por favor, insira um email válido."                          
                         },
                   celular: {required: "O preenchimento do celular é obrigatório.",
                          digits: "Por favor, apenas dígitos.",
                          minlength: "O número de celular deve conter ao menos 10 caracteres.",
                          maxlength: "O número de celular deve conter no máximo 14 caracteres."
                         },
                   login: {required: "O preenchimento do login é obrigatório.",
                          minlength: "O login deve conter ao menos 3 caracteres.",
                          maxlength: "O login deve conter no máximo 20 caracteres."
                         },
                   senha: {required: "O preenchimento da senha é obrigatório.",
                          minlength: "A senha deve conter ao menos 8 caracteres.",
                          maxlength: "A senha deve conter no máximo 255 caracteres."
                         },
                   
                   endereco: {minlength: "O endereço deve conter ao menos 5 caracteres.",
                              maxlength: "O endereço deve conter no máximo 50 caracteres."
                         },
                   cidade: {minlength: "A cidade deve conter ao menos 3 caracteres.",
                            maxlength: "A cidade deve conter no máximo 30 caracteres.",
                            lettersonly: "Apenas letras.",
                         },
                   bairro: {minlength: "O bairro deve conter ao menos 3 caracteres.",
                            maxlength: "O bairro deve conter no máximo 30 caracteres.",
                            lettersonly: "Apenas letras.",
                         },
                   cep: {minlength: "O cep deve conter ao menos 8 caracteres.",
                        maxlength: "O cep deve conter no máximo 9 caracteres.",
                        digits: "Apenas dígitos."
                        },
                   confirmPassword: {required: "Por favor, confirme sua senha.",
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