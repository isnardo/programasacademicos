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
		<a href='<?php echo site_url('examples/usuario')?>'>Usuario</a> |
		<a href='<?php echo site_url('examples/facultad')?>'>Entidad</a> |
		<a href='<?php echo site_url('examples/licenciatura')?>'>Licenciaura</a> |
		<a href='<?php echo site_url('examples/competencia_profesional')?>'>C. Profesional</a> |
		<a href='<?php echo site_url('examples/competencia_transversal')?>'>C. Transversal</a> |
		<a href='<?php echo site_url('examples/materia')?>'>Materia</a> |
		<a href='<?php echo site_url('examples/programa')?>'>Programa</a> |
		<a href='<?php echo site_url('examples/unidad')?>'>Unidades</a> |
		<a href='<?php echo site_url('examples/tema')?>'>Temas</a> |
		<a href='<?php echo site_url('examples/subtema')?>'>SubTemas</a> |

	</div>
	<div style='height:20px;'></div>
    <div>
		<?=$output;?>
    </div>
</body>
</html>
