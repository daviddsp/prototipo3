<?php
/* @var $this ContenidoController */
/* @var $model Contenido */

$this->breadcrumbs=array(
	'Contenidos'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List Contenido', 'url'=>array('index')),
	array('label'=>'Manage Contenido', 'url'=>array('admin')),
);
?>

<h1>Create Contenido</h1>

<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>