<?php /* @var $this Controller */ ?>
<?php $this->beginContent('//layouts/main'); ?>
<div class="span-19">
	<div id="content">
		<?php echo $content; ?>
	</div><!-- content -->
</div>

<nav class="acciones">
	<?php 
	$this->widget('bootstrap.widgets.TbMenu', array(
			'type'=>'tabs', // '', 'tabs', 'pills' (or 'list')
			'stacked'=>true, // whether this is a stacked menu
	
	));
	
	?>
</nav>

<div class="span-5 last">
	<div id="sidebar">
	<?php
	/*
		$this->beginWidget('zii.widgets.CPortlet', array(
			'title'=>'Operations',
		));
		$this->widget('zii.widgets.CMenu', array(
			'items'=>$this->menu,
			'htmlOptions'=>array('class'=>'operations'),
		));
		
		
		$this->endWidget();
		
		$this->widget('bootstrap.widgets.TbMenu', array(
				'type'=>'list', // '', 'tabs', 'pills' (or 'list')
				'stacked'=>false, // whether this is a stacked menu

		));*/
	?>
	</div><!-- sidebar -->
</div>
<?php $this->endContent(); ?>