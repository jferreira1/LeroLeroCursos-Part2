<%@page import="Model.DAO.CursoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Curso"%>
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
                
                <h5 class="card-title pt-5">Atualizar cursos</h5>
                <form class="card-body mx-auto row" id="formulario_curso" method="POST" action="http://localhost:8084/LeroLeroCursos/AtualizarCursos">
                    
                    <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-graduation-cap"></i>
                      </span>
                    </div>
                    <select class="form-control" name="selecionar_curso">
                        <option>Selecionar Curso*</option>
                        <%
                        CursoDAO daoCurso = new CursoDAO();
                        ArrayList<Curso> listaCursos = daoCurso.getLista();
                        for(Curso c : listaCursos) { %>    
                            <option>  <%= c.getNome()%> </option>
                      <%}
                        %>
                    </select>
                    </div>
    
                  <label for="nome" generated="true" class="error text-danger col-12 text-left"></label>
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-graduation-cap"></i>
                      </span>
                    </div>
                    <input class="form-control" name="nome" placeholder="Nome do curso*" type="text">
                  </div>

                  <label for="requisitos" generated="true" class="error text-danger col-12 text-left"></label>
                      
                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-clipboard-check"></i>
                      </span>
                    </div>
                    <textarea class="form-control" name="requisitos" placeholder="Informe os requisitos necessário para a matrícula do aluno no curso. (Max: 255 Caracteres)" type="text" rows="4"></textarea>
                  </div>

                  <label for="ementa" generated="true" class="error text-danger col-12 text-left"></label>

                  <div class="form-group input-group col-12">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-book"></i>
                      </span>
                    </div>
                    <textarea class="form-control" name="ementa" placeholder="Informe a ementa do curso.  (Max: 255 Caracteres)" type="text" rows="4"></textarea>
                  </div>

                  <label for="carga_horaria" generated="true" class="error text-danger col-6 text-left"></label>
                  <label for="preco" generated="true" class="error text-danger col-6 offset-6 text-left m-0"></label>
                  
                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-clock"></i>
                      </span>
                    </div>
                    <input class="form-control" name="carga_horaria" placeholder="Carga Horária*" type="number" min="0">
                  </div>

                  

                  <div class="form-group input-group col-6">
                    <div class="input-group-prepend">
                      <span class="input-group-text">
                        <i class="fas fa-dollar-sign"></i>
                      </span>
                    </div>
                    <input class="form-control" name="preco" placeholder="Preço*" type="number" min="0">
                  </div>

                  <div class="form-group col-12">
                    <button class="btn btn-warning btn-block" type="submit">Atualizar curso</button>
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
             $("#formulario_curso").validate({
               
               rules: {
                 nome: {required:true, minlength: 3, maxlength:50},
                 requisitos: {maxlength:255},
                 ementa: {maxlength:255},
                 carga_horaria: {required:true, min: 0, maxlength:5, number:true},
                 preco: {required:true, min:0, number:true},          
               },
               messages: {
                 nome: {required: "O preenchimento do nome é obrigatório.",
                        minlength: "O nome deve conter ao menos 3 letras.",
                        maxlength: "O nome deve conter no máximo 50 letras."
                       },
                 requisitos: {maxlength: "Não ultrapasse o limite de 255 caracteres."},
                 ementa: {maxlength: "Não ultrapasse o limite de 255 caracteres."},
                 carga_horaria: {required: "Carga horária obrigatório.",
                        min: "Insira um valor positivo.",
                        maxlength: "Valor até 5 algarismos.",
                        number:"Insira apenas dígitos."
                       },
                 preco: {required: "O valor é obrigatório.",
                        min: "Insira um valor positivo",
                        number: "Insira apenas dígitos"
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
