<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
</head>
<body>
	<div>
		<a href='<?php echo site_url('crud/usuario')?>'>Usuario</a> |
		<a href='<?php echo site_url('crud/facultad')?>'>Entidad</a> |
		<a href='<?php echo site_url('crud/licenciatura')?>'>Licenciaura</a> |
		<a href='<?php echo site_url('crud/competencia_profesional')?>'>C. Profesional</a> |
		<a href='<?php echo site_url('crud/competencia_transversal')?>'>C. Transversal</a> |
		<a href='<?php echo site_url('crud/materia')?>'>Materia</a> |
		<a href='<?php echo site_url('crud/programa')?>'>Programa</a> |
		<a href='<?php echo site_url('crud/unidad')?>'>Unidades</a> |
		<a href='<?php echo site_url('crud/tema')?>'>Temas</a> |
		<a href='<?php echo site_url('crud/subtema')?>'>SubTemas</a> |

	</div>
	<div style='height:20px;'></div>
    <div>
		<?=$output;?>
    </div>
</body>
</html>
