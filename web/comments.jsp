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

        <!-- FontAwesome CSS -->
        <jsp:include page="templates/fontawesome.jsp"/>
        
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
          <!-- Cards -->
          <div class="card-columns">
            <div class="col mb-4">
              <div class="card h-100" id="aluno1">
                <img src="assets/images/aluno_mktng.jpg" class="card-img-top" alt="Uma mulher sorrindo.">
                <div class="card-body">
                  <h5 class="card-title">Ana Franco</h5>             
                  <i class="fas fa-map-marker-alt text-muted"> São Paulo, SP</i>
                  <p class="card-text">25 Anos, Digital Influencer.</p>
                  <p class="text-right">
                    <button type="button" class="btn" data-toggle="modal" data-target="#modal_aluno1">Comentário</button>
                  </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Cursos: Marketing</small>
                </div>
              </div>
            </div>
            <div class="col mb-4">
              <div class="card h-100" id="aluno2">
                <img src="assets/images/aluno_fncs.jpg" class="card-img-top" alt="Um homem sorrindo.">
                <div class="card-body">
                  <h5 class="card-title">Gabriel Martins</h5>
                  <i class="fas fa-map-marker-alt text-muted"> Vila Velha, ES</i>
                  <p class="card-text">27 Anos, Empreendedor.</p>
                  <p class="text-right">
                    <button type="button" class="btn" data-toggle="modal" data-target="#modal_aluno2">Comentário</button>
                  </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Cursos: Educação Financeira, Marketing</small>
                </div>
              </div>
            </div>
            <div class="col mb-4">
              <div class="card h-100" id="aluno3">
                <img src="assets/images/aluno_prog.jpg" class="card-img-top" alt="Fotografia de um rapaz">
                <div class="card-body">
                  <h5 class="card-title">Ítalo Barbosa</h5>
                  <i class="fas fa-map-marker-alt text-muted"> Florianópolis, SC</i>
                  <p class="card-text">29 Anos, Desenvolvedor Web.</p>
                  <p class="text-right">
                    <button type="button" class="btn" data-toggle="modal" data-target="#modal_aluno3">Comentário</button>
                  </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Cursos: Programação Java, Redes de Computadores</small>
                </div>
              </div>
            </div>
            <div class="col mb-4">
              <div class="card h-100" id="aluno4">
                <img src="assets/images/aluno_robot.jpg" class="card-img-top" alt="Fotografia de uma jovem graduada.">
                <div class="card-body">
                  <h5 class="card-title">Juliana Gonçalves</h5>
                  <i class="fas fa-map-marker-alt text-muted"> Fortaleza, CE</i>
                  <p class="card-text">22 Anos, Engenheira de Produção.</p>
                  <p class="text-right">
                    <button type="button" class="btn" data-toggle="modal" data-target="#modal_aluno4">Comentário</button>
                  </p>
                </div>
                <div class="card-footer">
                    <small class="text-muted">Cursos: Robótica</small>
                </div>
              </div>
            </div>
            <div class="col mb-4">
                <div class="card h-100" id="aluno5">
                  <img src="assets/images/aluno_redes.jpg" class="card-img-top" alt="Um homem lendo um livro.">
                  <div class="card-body">
                    <h5 class="card-title">Jonathan Batista</h5>
                    <i class="fas fa-map-marker-alt text-muted"> Belo Horizonte, MG</i>
                    <p class="card-text">26 Anos, Técnico de Telecomunicações.</p>
                    <p class="text-right">
                      <button type="button" class="btn" data-toggle="modal" data-target="#modal_aluno5">Comentário</button>
                    </p>
                  </div>
                <div class="card-footer">
                    <small class="text-muted">Cursos: Redes de Computadores</small>
                </div>
                </div>
            </div>
            <div class="col mb-4">
              <div class="card h-100" id="aluno6">
                <img src="assets/images/aluno_robot_java.jpg" class="card-img-top" alt="Uma mulher estudando.">
                <div class="card-body">
                  <h5 class="card-title">Fernanda Saito</h5>
                  <i class="fas fa-map-marker-alt text-muted"> Niterói, RJ</i>
                  <p class="card-text">21 anos, Engenheira Elétrica.</p>
                  <p class="text-right">
                    <button type="button" class="btn" data-toggle="modal" data-target="#modal_aluno6">Comentário</button>
                  </p>
                </div>
              <div class="card-footer">
                  <small class="text-muted">Cursos: Robótica, Programação Java</small>
              </div>
              </div>
          </div>
          </div>
          <!-- Fim dos Cards -->

          <!-- Modals -->
          <div class="modal" tabindex="-1" role="dialog" id="modal_aluno1">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Opinião da Ana</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Etiam non consequat purus. Praesent nec odio et nisi faucibus scelerisque. Quisque dignissim, neque quis molestie ultricies, ipsum diam molestie massa, sed tincidunt dolor nibh id justo. Nulla vitae lobortis lectus. Aliquam eu semper arcu, quis fermentum lectus. Maecenas sit amet tincidunt nibh. Ut venenatis sem nec erat accumsan blandit. Quisque vel porttitor eros.</p>
                  <p>In faucibus massa est, a vestibulum diam molestie eget. Aliquam erat volutpat. Ut cursus mi ante, eu ultricies lacus rutrum a. Phasellus id auctor dolor, a placerat metus. Phasellus sollicitudin libero nunc, at finibus metus suscipit eu. Nullam maximus fringilla mauris, sit amet rutrum tellus tempus ac. Morbi nulla arcu, mollis ac elementum eget, semper in dui. Vivamus imperdiet fermentum eros in dignissim. Mauris euismod est eu nunc commodo, et pharetra lacus pharetra.</p>

                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>

          <div class="modal" tabindex="-1" role="dialog" id="modal_aluno2">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Opinião do Gabriel</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Mauris non est ac eros commodo lacinia non et leo. Maecenas hendrerit nec nisi a convallis. In quis arcu id leo commodo pharetra et eu ipsum. Praesent eget euismod sapien. Integer in nulla neque. Quisque pharetra elit placerat mauris malesuada semper. Nullam condimentum purus vitae metus ultrices vehicula. Suspendisse sollicitudin tortor tincidunt odio accumsan, ut congue augue egestas.</p>

                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>

          <div class="modal" tabindex="-1" role="dialog" id="modal_aluno3">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Opinião do Ítalo</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Fusce at diam tincidunt, elementum sem vel, pellentesque metus. Curabitur molestie vulputate augue, ac aliquam mauris consequat nec. Nulla commodo lorem nec sem egestas ultrices. Quisque placerat libero eget ligula gravida, ut rhoncus turpis pulvinar. Phasellus arcu elit, sagittis quis tellus vulputate, ornare finibus nulla. Praesent a ultrices magna, ut blandit ipsum. Nullam tempus fringilla porttitor. Suspendisse tempus commodo arcu, et mattis eros auctor sit amet. Integer at risus pharetra, scelerisque diam id, hendrerit ante. Praesent a facilisis lorem, ultricies porttitor leo. Nulla elementum, dui quis placerat commodo, lacus ex sodales sem, accumsan finibus metus nunc a neque. Aliquam at lectus in dolor consectetur placerat in sit amet justo. Integer porttitor vehicula tellus et volutpat. Sed sit amet eleifend metus, at ultricies eros.</p>

                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>

          <div class="modal" tabindex="-1" role="dialog" id="modal_aluno4">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Opinião da Juliana</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Vivamus ullamcorper sapien ut enim condimentum auctor. Cras arcu mi, iaculis cursus diam id, fringilla tincidunt felis. Aliquam sem leo, aliquam id pharetra vel, varius eu justo. Proin sapien ipsum, efficitur ac pulvinar vel, euismod ut est. Aliquam porta, leo ut vulputate interdum, enim tortor mattis nibh, vitae ultricies ipsum velit in nulla. In fermentum dui in justo tincidunt dapibus. Donec pretium, libero quis tincidunt tristique, tortor nunc euismod justo, sed venenatis risus leo efficitur eros. Suspendisse potenti. Cras urna leo, mollis ac lorem non, consectetur bibendum leo. Nam aliquam, ligula pellentesque venenatis consectetur, tortor lectus bibendum enim, vitae interdum magna risus ut nulla. Sed eget ante consectetur, mattis libero id, pretium turpis. Sed turpis eros, auctor at volutpat in, vulputate sed felis. Cras lobortis odio ac erat viverra sollicitudin. </p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>

          <div class="modal" tabindex="-1" role="dialog" id="modal_aluno5">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Opinião do Jonathan</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Vivamus at magna maximus, eleifend metus quis, dictum elit. Mauris vitae mattis erat. Nunc rutrum feugiat arcu id varius. Suspendisse viverra rhoncus pretium. Proin volutpat nec est sed cursus. In sed lobortis libero, et laoreet tellus. Donec facilisis est lorem, quis pellentesque erat faucibus nec.</p>
                  <p>Curabitur maximus a tortor in rutrum. Ut ipsum nisl, facilisis ut volutpat sit amet, rhoncus non nisl. Suspendisse ipsum sem, iaculis id placerat vitae, mollis at neque. Vestibulum quis eleifend dolor. Sed consectetur, quam id dictum ultrices, justo odio pellentesque velit, vel placerat justo massa a purus. Etiam varius placerat dolor nec interdum. Donec eget nunc leo. Cras sapien leo, elementum eu urna eu, placerat pharetra nunc. Proin eu leo nec leo porttitor rutrum. Vestibulum metus nisi, convallis in dignissim quis, efficitur sed mauris. Vestibulum purus odio, tincidunt a condimentum non, fringilla quis eros. Vestibulum nec placerat justo. </p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
              </div>
            </div>
          </div>

          <div class="modal" tabindex="-1" role="dialog" id="modal_aluno6">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title">Opinião da Fernanda</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <p>Nam sollicitudin nisi sit amet magna rhoncus, et accumsan ligula dignissim. Etiam nec iaculis tellus. Vivamus auctor vitae augue vel luctus. Proin blandit odio id tincidunt efficitur. Curabitur rutrum, tortor fermentum accumsan mattis, metus justo tincidunt magna, quis scelerisque augue nunc ultrices elit. Praesent sapien neque, molestie ut suscipit sit amet, convallis eget lorem. Donec euismod, ipsum in pulvinar porta, sem quam rutrum diam, non tempor risus diam sed arcu. Maecenas placerat neque et leo dignissim, at bibendum velit suscipit. Vestibulum arcu dolor, imperdiet nec convallis condimentum, porttitor sed ligula. Morbi at malesuada ipsum, sit amet efficitur ligula. Mauris consequat velit id dolor dignissim, maximus consectetur urna tincidunt. Sed turpis sem, feugiat non turpis sed, aliquam efficitur ex.</p>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
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