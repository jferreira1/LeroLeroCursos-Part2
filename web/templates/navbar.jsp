<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navbar-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
            <a class="navbar-brand p-2 mt-2" href="./index.jsp"><img src="assets/lerolero.svg" width="40" height="40" class="d-inline-block align-top mr-2" alt="logo">LeroLero</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggler" aria-controls="navbarToggler" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
          
            <div class="collapse navbar-collapse" id="navbarToggler">
              <ul class="navbar-nav mr-auto">
              </ul>
              <ul class="navbar-nav mt-2 mt-lg-0">
                <li class="nav-item p-2">
                  <a class="nav-link" href="./about.jsp">Sobre</a>
                </li>
                <li class="nav-item p-2">
                  <a class="nav-link" href="./instructors.jsp">Instrutores</a>
                </li>
                <li class="nav-item p-2">
                  <a class="nav-link" href="./comments.jsp">Comentários</a>
                </li>
                <li class="nav-item p-2">
                    <a class="nav-link" href="./register.jsp">Cadastro</a>
                </li>

                <li class="nav-item p-2">
                  <a class="btn dropdown-toggle text-muted" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tabelas</a>
                    <div class="dropdown">
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="./register.jsp">Cadastrar Aluno</a>
                            <a class="dropdown-item" href="./register_instructor.jsp">Cadastrar Instrutor</a>
                            <a class="dropdown-item" href="./register_course.jsp">Cadastrar Curso</a>
                            <a class="dropdown-item" href="./register_class.jsp">Cadastrar Turma</a>
                            <a class="dropdown-item" href="./register_enrollment.jsp">Cadastrar Matrícula</a>
                            <a class="dropdown-item" href="./register_admin.jsp">Cadastrar Admin</a>
                        </div>
                    </div>
                </li>

                <li class="nav-item p-2">
                    <a class="btn btn-outline-dark" href="./login.jsp">Acessar</a>
                </li>
              </ul>
            </div>
          </nav>
        <!--  Fim da Navbar-->
    