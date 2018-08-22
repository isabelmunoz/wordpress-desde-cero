<?php

//Registro de styles

function register_enqueue_style() {
    $theme_data = wp_get_theme();

 /* Registrando estilos */
 wp_register_style('portfolio-item', get_parent_theme_file_uri('/assets/css/portfolio-item.css'),
'null', '1.0', 'screen');
 wp_register_style('styles', get_parent_theme_file_uri('/assets/css/styles.css'),
'null', '1.0', 'screen');
wp_register_style('bootstrap', get_parent_theme_file_uri('/assets/vendor/bootstrap/css/bootstrap.min.css'),
'null', '4.1.1', 'screen');

 /* Estilos en cola */
 wp_enqueue_style('portfolio-item');
 wp_enqueue_style('styles');
 wp_enqueue_style('bootstrap');

}
add_action( 'wp_enqueue_scripts', 'register_enqueue_style' );



//Registro de scripts

function register_enqueue_scripts() {
  $theme_data = wp_get_theme();

 /* Registrando scripts */
 wp_register_script('bootstrap', get_parent_theme_file_uri('/assets/vendor/bootstrap/js/bootstrap.min.js'),
 '4.1.1',null, true);
 wp_register_script('jquery', get_parent_theme_file_uri('/assets/vendor/jquery/jquery.min.js'),
null, '3.2.1',true);

 /* Estilos en cola */
 wp_enqueue_script('bootstrap');
 wp_enqueue_script('jquery');

}
add_action( 'wp_enqueue_scripts', 'register_enqueue_scripts' );


//activando las imagenes destacadas
if ( function_exists( 'add_theme_support' ) )
add_theme_support( 'post-thumbnails' );

?>
