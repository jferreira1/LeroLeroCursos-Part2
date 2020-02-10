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

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <!-- Conteudo aqui -->
            
            <!-- Cards -->
            <div class="card-columns">
                <div class="col mb-4">
                  <div class="card h-100">
                    <img src="assets//images/curso_prog.jpg" class="card-img-top" alt="Alunos de programação em uma mesa.">
                    <div class="card-body">
                      <h5 class="card-title">Curso de Programação Java</h5>
                      <p class="card-text">Aprenda Java do Básico até Orientação a Objetos, Herança e Polimorfismo, Collections, Threads e muito mais!</p>
                    </div>
                  </div>
                </div>
                <div class="col mb-4">
                  <div class="card h-100">
                    <img src="assets//images/curso_redes.png" class="card-img-top" alt="Um rack de servidor.">
                    <div class="card-body">
                      <h5 class="card-title">Curso de Redes de Computadores</h5>
                      <p class="card-text">Focando na Internet e nas questões fundamentalmente importantes das redes, este curso fornece uma excelente base para pessoas interessadas em ciência da computação e engenharia elétrica, sem exigir amplo conhecimento de programação ou matemática.</p>
                    </div>
                  </div>
                </div>
                <div class="col mb-4">
                  <div class="card h-100">
                    <img src="assets//images/curso_robot.jpg" class="card-img-top" alt="Um robô humanoide">
                    <div class="card-body">
                      <h5 class="card-title">Curso de Robótica</h5>
                      <p class="card-text">Este curso preparará o aluno para atuar em uma das áreas mais promissoras do mercado de trabalho atualmente. Com a Robótica Educacional, o aluno será capaz de conhecer os diversos tipos de mecanismos tanto motorizado quanto a parte de programação.</p>
                    </div>
                  </div>
                </div>
                <div class="col mb-4">
                  <div class="card h-100">
                    <img src="assets/images/curso_fncs.jpg" class="card-img-top" alt="Um executivo lendo um jornal financeiro.">
                    <div class="card-body">
                      <h5 class="card-title">Curso de Educação Financeira</h5>
                      <p class="card-text">Você aprenderá sobre o sistema financeiro, componentes de risco, tipos de produtos e serviços bancários, bem como a forma mais vantajosa para negociar possíveis dívidas.</p>
                    </div>
                  </div>
                </div>
                <div class="col mb-4">
                    <div class="card h-100">
                      <img src="assets//images/curso_mktng.jpg" class="card-img-top" alt="Um executivo lendo um jornal financeiro.">
                      <div class="card-body">
                        <h5 class="card-title">Curso de Marketing Digital</h5>
                        <p class="card-text">Você aprenderá porque é importante monitorar os resultados das suas ações, com o uso das métricas, e descobrirá as várias etapas dessa metodologia. Saberá, ainda, como melhorar a gestão e a integração dos times de marketing e vendas e como dar o próximo passo, elaborando o seu próprio departamento de marketing digital.</p>
                      </div>
                    </div>
                  </div>
              </div>
        
        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/> 
        
    </body>
</html>