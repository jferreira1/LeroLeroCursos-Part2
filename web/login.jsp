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

        <!-- Custom styles for this template -->
        <link href="assets/css/signin.css" rel="stylesheet">

    </head>
    <body class="text-center">
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>
        <div class="container-fluid">
            <form class="form-signin">
                <img class="mb-4" src="assets/lerolero.svg" alt="logo" width="72" height="72">
                <h1 class="h3 mb-3 font-weight-normal">Preencha os campos</h1>
                <label for="inputEmail" class="sr-only">Endereço de Email</label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Endereço de Email" required autofocus>
                <label for="inputPassword" class="sr-only">Senha</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Senha" required>
                <div class="checkbox mb-3">
                  <label>
                    <input type="checkbox" value="remember-me"> Lembrar-me
                  </label>
                </div>
                <button class="btn btn-lg btn-warning btn-block" type="submit">Enviar</button>
                
              </form>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
    </body>
</html>