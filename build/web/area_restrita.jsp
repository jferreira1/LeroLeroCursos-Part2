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
        <%
            Object status = session.getAttribute("status");

            if (status != null) {
                Object usertype = session.getAttribute("usertype");
                String auxUsertype = (String) usertype;
                String auxStatus = (String) status;
                if (auxStatus.equals("ok")) {
                    if (auxUsertype.equals("aluno")) { %>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <div class="text-secondary">
                <h1 class="text-left  font-weight-light">Área do aluno</h1>
            </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else if(auxUsertype.equals("instrutor")) {%>
        
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <div class="text-secondary">
                <h1 class="text-left  font-weight-light">Área do Instrutor</h1>
            </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else if(auxUsertype.equals("administrador")) {%>
        
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="#">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <jsp:include page="templates/navbar.jsp"/>

        <div class="container-fluid">
            <div class="text-secondary">
                <h1 class="text-left  font-weight-light">Área do administrador</h1>
            </div>

        </div>

        <!-- JQuery -->
        <jsp:include page="templates/jquery.jsp"/>
        <!-- Bootstrap 4-->
        <jsp:include page="templates/bootstrap4.jsp"/>
        
        <%} else {
                response.sendRedirect("./login");
            }
            
        } else { response.sendRedirect("./login"); }
} else { response.sendRedirect("./login"); }
%>
    </body>
</html>