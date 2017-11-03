<?php
	defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="ES-mx">

<head>
		<!-- Meta data for the webpage -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Sistema para la actualizacion curricular permanente">
		<meta name="keywords" content="cirriculum,UASLP,educacion,tecnologia">
    <meta name="author" content="Isnardo Reducindo">

    <title><?=$this->main->system_version;?></title>

		<!-- System FavIcon -->
    <link rel="icon" href="<?=$this->main->image('uaslp-logo-fav.png');?>">

		<!-- Bootstrap Core CSS -->
    <link href="<?=base_url('assets/vendor/bootstrap/css/bootstrap.css');?>" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="<?=base_url('assets/vendor/metisMenu/metisMenu.css');?>" rel="stylesheet">
		<!-- DataTables CSS -->
		<link href="<?=base_url('assets/vendor/datatables-plugins/dataTables.bootstrap.css');?>" rel="stylesheet">
		<!-- DataTables Responsive CSS -->
		<link href="<?=base_url('assets/vendor/datatables-responsive/dataTables.responsive.css');?>" rel="stylesheet">
    <!-- Custom Admin-2 CSS -->
    <link href="<?=base_url('assets/dist/css/sb-admin-2.css')?>" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="<?=base_url('assets/vendor/font-awesome/css/font-awesome.css');?>" rel="stylesheet" type="text/css">

</head>
