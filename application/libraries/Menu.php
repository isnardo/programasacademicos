<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu{

  public $arr;

  public function __construct(){
  }

  public function user_side_menu( $level ){

    switch( $level ){
      //---------------------
      // Visitante
      case 1:
        break;


      //---------------------
      // Revisor
      case 2:
        $menu = array(
          // INICIO
          array( // First level menu item
            'name'        => 'Inicio',
            'controller'  => 'inicio',
            'icon'        => 'fa fa-home fa-fw',
            'submenu'     => false
          ), // End firs level menu item

          // PROGRAMAS ACADEMICOS
          array( // First level menu item
            'name'        => 'Programas académicos',
            'controller'  => 'programas/lista',
            'icon'        => 'fa fa-clipboard fa-fw',
            'submenu'     => false
          ) // End firs level menu item
        ); // End menu items array
        break;


      //---------------------
      // Supervisor
      case 3:
        break;


      //---------------------
      // Administrador
      case 4:
        break;


      //---------------------
      // Super Administrador
      case 5:
        $menu = array(
          // INICIO
          array( // First level menu item
            'name'        => 'Inicio',
            'controller'  => 'inicio',
            'icon'        => 'fa fa-home fa-fw',
            'submenu'     => false
          ), // End firs level menu item

          // CRUD
          array( // First level menu item
            'name'        => 'CRUD',
            'controller'  => 'crud',
            'icon'        => 'fa fa-table fa-fw',
            'submenu'     => false
          ), // End firs level menu item

          // PROGRAMAS ACADEMICOS
          array( // First level menu item
            'name'        => 'Programas académicos',
            'controller'  => 'programas/lista',
            'icon'        => 'fa fa-clipboard fa-fw',
            'submenu'     => true,
            'submenu_list'=>
            array(// Second level menu items list
              array( // Second level item
                'name'        => 'Nuevo',
                'controller'  => 'programas/nuevo',
                'icon'        => 'fa fa-file-o fa-fw',
                'submenu'     => false
              ),
              array( // Second level item
                'name'        => 'Actualziar',
                'controller'  => '#',
                'icon'        => 'fa fa-refresh fa-spin fa-fw',
                'submenu'     => false
              ),
              array( // Second level item
                'name'        => 'Lista',
                'controller'  => 'programas/lista',
                'icon'        => 'fa fa-list-ol fa-fw',
                'submenu'     => false
              )
            ) // End second level items list*/
          ), // End firs level menu item

          // CURSOS
          array( // First level menu item
            'name'        => 'Cursos',
            'controller'  => '#',
            'icon'        => 'fa fa-list-alt fa-fw',
            'submenu'     => true,
            'submenu_list'=>
            array(// Second level menu items list
              array( // Second level item
                'name'        => 'Nuevo',
                'controller'  => '#',
                'icon'        => 'fa fa-window-maximize fa-fw',
                'submenu'     => false
              ),
              array( // Second level item
                'name'        => 'Modificar',
                'controller'  => '#',
                'icon'        => 'fa fa-pencil-square-o fa-fw',
                'submenu'     => false
              ),
              array( // Second level item
                'name'        => 'Lista',
                'controller'  => '#',
                'icon'        => 'fa fa-list-ol fa-fw',
                'submenu'     => false
              )
            ) // End second level items list
          ), // End firs level menu item

          // USUARIOS
          array( // First level menu item
            'name'        => 'Usuarios',
            'controller'  => '#',
            'icon'        => 'fa fa-users fa-fw',
            'submenu'     => true,
            'submenu_list'=>
            array(// Second level menu items list
              array( // Second level item
                'name'        => 'Nuevo',
                'controller'  => 'usuario/nuevo',
                'icon'        => 'fa fa-user-plus fa-fw',
                'submenu'     => false
              ),
              array( // Second level item
                'name'        => 'Modificar',
                'controller'  => '#',
                'icon'        => 'fa fa-vcard fa-fw',
                'submenu'     => false
              )
            ) // End second level items list
          ), // End firs level menu item
        ); // End menu items array
        break;
    } // end switch

    return $menu;
  }

  public function render_side_menu( $menu ){
    $ci =& get_instance();
    $ci->load->library('main');

    // start navigation for side bar
    $html = '<div class="navbar-default sidebar" role="navigation">';
    $html = $html.'<div class="sidebar-nav navbar-collapse">';
    // Start ul label for menu
    $html = $html.'<ul class="nav" id="side-menu">';
    // Side search option
    $html = $html.'<li class="sidebar-search">';
    $html = $html.'<div class="input-group custom-search-form">';
    $html = $html.'<input type="text" class="form-control" placeholder="Buscar...">';
    $html = $html.'<span class="input-group-btn">';
    $html = $html.'<button class="btn btn-default" type="button">';
    $html = $html.'<i class="fa fa-search"></i>';
    $html = $html.'</button></span></div></li>';
    // End side search

    $n = count($menu);
    // Render first level
    for( $i = 0; $i < $n; $i++ ){
      $item = $menu[$i];
      // controller
      if(strcmp($item['controller'],'#') !== 0 ){
        $html = $html.'<li><a href="'.$ci->main->controller($item['controller']).'">';
      }else{
        $html = $html.'<li><a href="#">';
      }
      // icon
      $html = $html.'<i class="'.$item['icon'].'"></i>';
      // name
      $html = $html.' '.$item['name'];

      if( $item['submenu'] ){
        $html = $html.'<span class="fa arrow"></span></a>';
        $html = $html.'<ul class="nav nav-second-level">';
        $nn = count( $item['submenu_list'] );
        // Render second level
        for( $ii = 0; $ii < $nn; $ii++ ){
          $iitem = $item['submenu_list'][$ii];
          // controller
          if(strcmp($iitem['controller'],'#') !== 0 ){
            $html = $html.'<li><a href="'.$ci->main->controller($iitem['controller']).'">';
          }else{
            $html = $html.'<li><a href="#">';
          }
          // icon
          $html = $html.'<i class="'.$iitem['icon'].'"></i>';
          // name
          $html = $html.' '.$iitem['name'].'</a></li>';
        }
        $html = $html.'</ul>';
      }
      else
        $html = $html.'</a></li>';
    } // End first level rende

    // End ul label for menu
    $html = $html.'</ul>';
    // ./ navigation side bar
    $html = $html.'</div></div>';

    return $html;
  }

  // render user top menu
  public function render_top_menu(){
    $ci =& get_instance();
    $ci->load->library('main');

    // top menu
    $html = '<ul class="nav navbar-top-links navbar-right">';
    $html = $html.'<li class="dropdown">';
    $html = $html.'<a class="dropdown-toggle" data-toggle="dropdown" href="#">';
    // Usero photo
    $html = $html.'<img src="';
    $html = $html.$ci->main->user_photo();
    $html = $html.'" alt="" class="img-circle" width="30" height="30"> &nbsp;';
    // User name
    $html = $html.$ci->session->userdata['firstName'].' ';
    $html = $html.$ci->session->userdata['lastName'].' ';
    // icon menu
    $html = $html.'<i class="fa fa-caret-down"></i></a>';
    // -- User top menu elements --
    $html = $html.'<ul class="dropdown-menu dropdown-user">';
    /*
    // User profile
    $html = $html.'<li><a href="';
    $html = $html.'#';//$ci->main->controller('usuario/perfil');
    $html = $html.'"><i class="fa fa-user fa-fw"></i>';
    $html = $html.' Perfil de usuario</a></li>';
    // User configuration
    $html = $html.'<li><a href="';
    $html = $html.'#';
    $html = $html.'"><i class="fa fa-gear fa-fw"></i> Configuración</a></li>';
    */
    // Reportar Error
    $html = $html.'<li id="btn-error-gialog"><a href="';
    $html = $html.'#';
    $html = $html.'"><i class="fa fa-exclamation-triangle fa-fw"></i> Error</a></li>';
    // Divider
    $html = $html.'<li class="divider"></li>';
    // Sign out user session
    $html = $html.'<li><a href="';
    $html = $html.$ci->main->controller('login/stop');
    $html = $html.'"><i class="fa fa-sign-out fa-fw"></i> Salir</a></li>';
    // ./top menu
    $html = $html.'</ul></li></ul>';

    return $html;
  }

  // Render menu nav header
  public function nav_header(){
    $ci =& get_instance();
    $ci->load->library('main');

    $html = '<div class="navbar-header" id="main-menu">';
    $html = $html.'<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">';
    $html = $html.'<span class="sr-only">Menú de navegación</span>';
    $html = $html.'<span class="icon-bar"></span>';
    $html = $html.'<span class="icon-bar"></span>';
    $html = $html.'<span class="icon-bar"></span>';
    $html = $html.'</button>';
    $html = $html.'<a class="navbar-brand" href="';
    $html = $html.$ci->main->controller('inicio');
    $html = $html.'">';
    $html = $html.$ci->main->system_version;
    $html = $html.'</a></div>';

    return $html;
  }

  // Render user menu
  public function render_user_menu( $menu ){
    // start navigation bar menu
    $html = '<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom:0">';
    // render nav menu header
    $html = $html.$this->nav_header();
    // render top menu
    $html = $html.$this->render_top_menu();
    // render side menu according each user
    $html = $html.$this->render_side_menu( $menu );
    // ./navigation bar menu
    $html = $html.'</nav>';

    return $html;
  }


}
