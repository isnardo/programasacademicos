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
		<a href='<?php echo site_url('inicio')?>'>Inicio</a> |
		<a href='<?php echo site_url('crud/sugerencias')?>'>Sugerencia</a> |
		<a href='<?php echo site_url('crud/programa')?>'>Programa</a> |
		<a href='<?php echo site_url('crud/error')?>'>Error</a>
	</div>
	<div style='height:20px;'></div>
    <div>
		<?=$output;?>
    </div>
</body>
</html>
