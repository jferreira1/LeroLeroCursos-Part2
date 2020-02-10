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
                
                <h5 class="card-title pt-5">Registro de Matrícula</h5>
                <form class="card-body mx-auto row" id="formulario_matricula" method="POST">
    
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-graduation-cap"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_turma">
                        <option>Selecionar Turma*</option>
                    </select>   
                  </div>
                      
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_aluno">
                        <option>Selecionar Aluno*</option>
                    </select>
                  </div>

                  <div class="col-6 text-left text-muted">Data de Matrícula:</div>
                  <div class="col-6"></div>

                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" name="data_matricula" placeholder="Data de Matrícula" type="date">
                  </div>
                  
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-medal"></i>
                      </span>
                    </div>
                    <input class="form-control" name="nota" placeholder="Nota" type="number" step="0.1" max="10" min="0">
                  </div>

                  <label for="data_matricula" generated="true" class="error text-danger col-6 text-left"></label>
                  <label for="nota" generated="true" class="error text-danger col-6 text-left"></label>

                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Registrar matrícula</button>
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
             $("#formulario_matricula").validate({
               
               rules: {
                 data_matricula: {required:true, date:true},
                 nota: {required:true, number:true, range:[0,10]}
               },
               messages: {
                 data_matricula: {required: "O preenchimento da data é obrigatório.",
                                  date: "Por favor, insira uma data válida."
                                  },
                 nota: {number: "Por favor, insira apenas dígitos",
                        range: "Insira uma nota de 0 a 10."
                        },
                 carga_horaria: {required: "Carga horária obrigatório.",
                        min: "Insira um valor positivo.",
                        maxlength: "Valor até 5 algarismos.",
                        number:"Insira apenas dígitos."
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
