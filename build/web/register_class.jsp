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
                
                <h5 class="card-title pt-5">Registro de Turma</h5>
                <form class="card-body mx-auto row" id="formulario_turma" method="POST" action="http://localhost:8084/LeroLeroCursos/register_class">
    
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-graduation-cap"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_instrutor">
                        <option>Selecionar Instrutor*</option>
                    </select>   
                  </div>
                      
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fa fa-user"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_curso">
                        <option>Selecionar Curso*</option>
                    </select>
                  </div>

                  <div class="col-4 text-muted text-left">Data de Início*</div>
                  <div class="col-4 text-muted text-left">Data de Término*</div>
                  <div class="col-4"></div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" name="data_inicio" placeholder="Data de Início" type="date">
                  </div>
                  
                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="far fa-calendar-alt"></i>
                      </span>
                    </div>
                    <input class="form-control" name="data_final" placeholder="Data de Término" type="date">
                  </div>

                  <div class="form-group input-group col-4">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-clock"></i>
                      </span>
                    </div>
                    <input class="form-control" name="carga_horaria" placeholder="Carga Horária*" type="number" min="0">
                  </div>

                  <label for="data_inicio" generated="true" class="error text-danger col-4 text-left"></label>
                  <label for="data_final" generated="true" class="error text-danger col-4 text-left"></label>
                  <label for="carga_horaria" generated="true" class="error text-danger col-4 text-left"></label>

                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Registrar turma</button>
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
             $("#formulario_turma").validate({
               
               rules: {
                 data_inicio: {required:true, date:true},
                 data_final: {required:true, date:true},
                 carga_horaria: {required:true, min: 0, maxlength:5, number:true},
      
               },
               messages: {
                 data_inicio: {required: "O preenchimento da data é obrigatório.",
                               date: "Por favor, insira uma data válida."
                       },
                 data_final: {required: "O preenchimento da data é obrigatório.",
                              date: "Por favor, insira um data válida."},
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
