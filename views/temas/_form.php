<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'id'=>'temas-form',
	'enableAjaxValidation'=>false,
		
)); ?>

	<!--<p class="help-block">Fields with <span class="required">*</span> are required.-->
	
<p>
	<?php Yii::app()->user->setFlash('success', '<strong>Todo lo señalado con un <span class="required">*</span> es requerido no puede dejarlo vacio!</strong>');
	$this->widget('bootstrap.widgets.TbAlert', array(
    'block'=>true, // display a larger alert block?
    'fade'=>true, // use transitions?
    'closeText'=>'×', // close link text - if set to false, no close link is displayed
    'alerts'=>array( // configurations per alert type
	    'success'=>array('block'=>true, 'fade'=>true, 'closeText'=>'×'), // success, info, warning, error or danger
    ),
)); ?> 
</p>

	<?php echo $form->errorSummary($model); ?>

	<?php echo $form->textFieldRow($model,'nb_tema',array('class'=>'span5','maxlength'=>50)); ?>

	<?php echo $form->textFieldRow($model,'des_temas',array('class'=>'span5','maxlength'=>60)); ?>

	<?php echo $form->textFieldRow($model,'nb_usuario',array('class'=>'span5','maxlength'=>80)); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType'=>'submit',
			'type'=>'primary',
			'label'=>$model->isNewRecord ? 'Create' : 'Save',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
