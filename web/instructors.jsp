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
        <div class="container-fluid">
            <div>
                <h1 class="text-center font-weight-light pb-4 text-secondary">Nossos instrutores</h1>
            </div>
            
            <!-- Cards -->
            <div class="row justify-content-md-center" id="cards">
                <div class="col-lg-3">
                  <div class="card h-100">
                    <img src="assets//images/prof_prog.jpg" class="card-img-top" alt="Alunos de programação em uma mesa.">
                    <div class="card-body">
                      <h5 class="card-title">James Gosling</h5>
                      <p class="card-text text-justify">Conhecido como o pai da linguagem de programação Java. Em 1977, James Gosling se formou bacharel em ciência da computação pela Universidade de Calgary, e em 1983 obteve um PhD em ciência da computação pela Universidade Carnegie Mellon.</p>
                      <p><a href="https://pt.wikipedia.org/wiki/James_Gosling" >Saiba mais</a></p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Cursos: Programação Java</small>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3">
                  <div class="card h-100">
                    <img src="assets/images/prof_redes.jpg" class="card-img-top" alt="Um rack de servidor.">
                    <div class="card-body">
                      <h5 class="card-title">Tim Berners-Lee</h5>
                      <p class="card-text text-justify">Criador da World Wide Web, atualmente ele é o diretor do World Wide Web Consortium (W3C), uma organização de padrões da Web fundada em 1994 que desenvolve tecnologias interoperáveis para levar a Web a todo o seu potencial. Ele também é diretor da World Wide Web Foundation, lançada em 2009 para coordenar esforços para aumentar o potencial da Web em benefício da humanidade.</p>
                      <p><a href="https://www.w3.org/People/Berners-Lee/">Saiba mais</a></p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Cursos: Redes de Computadores</small>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3">
                  <div class="card h-100">
                    <img src="assets/images/prof_robot.jpg" class="card-img-top" alt="Um robô humanoide">
                    <div class="card-body">
                      <h5 class="card-title">Isaac Asimov</h5>
                      <p class="card-text text-justify">Asimov é considerado um dos mestres da Ficção Científica e, junto com Robert A. Heinlein e Arthur C. Clarke, foi considerado um dos "três grandes" da ficção científica. Sua principal obra "Eu, Robô" ficou famosa por apresentar as Três Leis da Robótica, como condição de coexistência dos robôs com os seres humanos.</p>
                      <p><a href="https://pt.wikipedia.org/wiki/Isaac_Asimov#Leis_da_Rob%C3%B3tica">Saiba mais</a></p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Cursos: Robótica</small>
                    </div>
                  </div>
                </div>
                <div class="w-100"></div>
                <div class="col-lg-3">
                  <div class="card h-100">
                    <img src="assets/images/prof_fncs.jpg" class="card-img-top" alt="Um executivo lendo um jornal financeiro.">
                    <div class="card-body">
                      <h5 class="card-title">Warren Buffet</h5>
                      <p class="card-text text-justify">Constantemente citado na lista da Forbes das pessoas com maior capital do mundo, ocupou o primeiro lugar em 2008. Atualmente é o principal acionista, presidente do conselho e diretor executivo da Berkshire Hathaway.</p>
                      <p><a href="https://en.wikipedia.org/wiki/Warren_Buffett">Saiba mais</a></p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Cursos: Educação Financeira</small>
                    </div>
                  </div>
                </div>
                <div class="col-lg-3">
                    <div class="card h-100">
                      <img src="assets/images/prof_mktng.jpg" class="card-img-top" alt="Um executivo lendo um jornal financeiro.">
                      <div class="card-body">
                        <h5 class="card-title">Elon Musk</h5>
                        <p class="card-text text-justify">Fundador, CEO e CTO da SpaceX; CEO da Tesla Motors; vice-presidente da OpenAI; fundador e CEO da Neuralink; e co-fundador e presidente da SolarCity. Musk é conhecido por manter e impulsionar suas empresas sem direcionar capital para a indústria midiática.</p>
                        <p><a href="https://en.wikipedia.org/wiki/Elon_Musk">Saiba mais</a></p>
                      </div>
                    <div class="card-footer">
                        <small class="text-muted">Cursos: Marketing Digital, Educação Financeira</small>
                    </div>
                    </div>
                  </div>
              </div>

        </div>

        <!-- JQuery -->
        <script src="assets/js/jquery-3.4.1.min.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script> 
        <script src="assets/js/jquery.mask.min.js"></script> 

        <!-- Bootstrap 4-->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>  

    </body>
</html>