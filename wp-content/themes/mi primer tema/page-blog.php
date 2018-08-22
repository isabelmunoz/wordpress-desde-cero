<?php get_header(); ?>
   <div class="container">
        <?php

           if ( have_posts() ) : while ( have_posts() ) :the_title(); the_post(); the_post_thumbnail();
           the_content(); the_category();the_tags() ;
           endwhile;
           else :
           _e( 'No hemos encontrado entradas', 'textdomain' );
           endif;

        ?>
   </div>

<?php get_footer(); ?>
