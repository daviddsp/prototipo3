<?php
$this->breadcrumbs=array(
	'Temas'=>array('index'),
	'Crear',
);

	$this->widget('bootstrap.widgets.TbMenu', array(
    'type'=>'tabs', // '', 'tabs', 'pills' (or 'list')
    'stacked'=>false, // whether this is a stacked menu
    'dropup'=>'false',
    'items'=>array(
			array('label'=>'Listar Temas','url'=>array('index')),
			array('label'=>'Gestión de Temas','url'=>array('admin')),
    ),
));


/*
$this->menu=array(
	array('label'=>'List Temas','url'=>array('index')),
	array('label'=>'Manage Temas','url'=>array('admin')),
);*/
?>

<h1>Crear Temas</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>