<?php
$this->breadcrumbs=array(
	'Temas'=>array('index'),
	$model->id_tema,
);

	$this->widget('bootstrap.widgets.TbMenu', array(
    'type'=>'tabs', // '', 'tabs', 'pills' (or 'list')
    'stacked'=>false, // whether this is a stacked menu
    'dropup'=>'false',
    'items'=>array(
			array('label'=>'Listar Temas','url'=>array('index')),
			array('label'=>'Crear Temas','url'=>array('create')),
			array('label'=>'Actualizar Temas','url'=>array('update','id'=>$model->id_tema)),
			array('label'=>'Borrar Temas','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id_tema),'confirm'=>'Are you sure you want to delete this item?')),
			array('label'=>'Gestión de Temas','url'=>array('admin')),
    ),
));

/*
$this->menu=array(
	array('label'=>'List Temas','url'=>array('index')),
	array('label'=>'Create Temas','url'=>array('create')),
	array('label'=>'Update Temas','url'=>array('update','id'=>$model->id_tema)),
	array('label'=>'Delete Temas','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id_tema),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Temas','url'=>array('admin')),
);*/
?>

<h1>Tema <?php echo $model->id_tema; ?>:<?php echo $model->nb_tema; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'type'=>'bordered',
	'attributes'=>array(
		'id_tema',
		'nb_tema',
		'des_temas',
		'nb_usuario',
	),
)); ?>
