<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_tema')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_tema),array('view','id'=>$data->id_tema)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nb_tema')); ?>:</b>
	<?php echo CHtml::encode($data->nb_tema); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('des_temas')); ?>:</b>
	<?php echo CHtml::encode($data->des_temas); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nb_usuario')); ?>:</b>
	<?php echo CHtml::encode($data->nb_usuario); ?>
	<br />


</div>