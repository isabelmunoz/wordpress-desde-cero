<?php get_header(); ?>
  <!-- Page Content -->
   <div class="container">


     <!-- Portfolio Item Heading -->
     <h1 class="my-4">Texto Primario
       <small>Texto secundario</small>
     </h1>

     <!-- Portfolio Item Row -->
     <div class="row">

       <div class="col-md-8">
         <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/img/frutas-750x500.jpg" alt="fruta central">
       </div>

       <div class="col-md-4">
         <h3 class="my-3">Descripción</h3>
         <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>
         <h3 class="my-3">Detalles</h3>
         <ul>
           <li>Lorem Ipsum</li>
           <li>Dolor Sit Amet</li>
           <li>Consectetur</li>
           <li>Adipiscing Elit</li>
         </ul>
       </div>

     </div>
     <!-- /.row -->

     <!-- Related Projects Row -->
     <h3 class="my-4">Ver más</h3>

     <div class="row">

       <div class="col-md-3 col-sm-6 mb-4">
         <a href="#">
           <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/img/descarga.jpg" alt="frutas2">
         </a>
       </div>

       <div class="col-md-3 col-sm-6 mb-4">
         <a href="#">
           <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/img/images.jpg" alt="frutas3">
         </a>
       </div>

       <div class="col-md-3 col-sm-6 mb-4">
         <a href="#">
           <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/img/noticia-frutas.jpg" alt="frutas4">
         </a>
       </div>

       <div class="col-md-3 col-sm-6 mb-4">
         <a href="#">
           <img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/img/descarga.jpg" alt="frutas5">
         </a>
       </div>

     </div>
     <!-- /.row -->

   </div>
   <!-- /.container -->

<?php get_footer(); ?>
