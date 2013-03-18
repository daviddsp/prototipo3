<?php /* @var $this Controller */ ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl; ?>/images/condor-logo-icon.png" type="image/x-icon" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="es" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->


	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/form.css" />

	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">

	<header>
		<div id="mainmenu">
		<?php $this->widget('bootstrap.widgets.TbNavbar', array(
				'type'=>'inverse', // null or 'inverse'
				'brand'=>'Cóndor',
				'fixed' => 'top',
				'brandUrl'=>array('/site/index'),
				'collapse'=>true, // requires bootstrap-responsive.css
				'items'=>array(
				array(
					'class'=>'bootstrap.widgets.TbMenu',
					'items'=>array(
						array('label'=>'Inicio', 'url'=>array('/site/index'), 'icon'=>'home'),
						array('label'=>'Temas', 'url'=>array('/Temas/index')),

						array('label'=>'¿Quienes Somos?', 'url'=>array('/site/page', 'view'=>'about'),),
						array('label'=>'Contactanos', 'url'=>array('/site/contact')),
						
			),
		),
		'<form class="navbar-search pull-left" action=""><input type="text" class="search-query span2" placeholder="Search"></form>',
		array(
			'class'=>'bootstrap.widgets.TbMenu',
			'htmlOptions'=>array('class'=>'pull-right'),
			'items'=>array(
			array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
			array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
				
			),
		),
	),
));?>
	</div><!-- mainmenu -->
	</header><!-- header -->

	
	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<?php echo $content; ?>

	<div class="clear"></div>

	<footer>
		<img style="border:10px;width:38px;height:34px"
            src="./images/cuc-logo.png"
            alt="¡CUC Logo!" />
		Colegio Universitario de Caracas - PNFI. <?php echo date('Y'); ?>.<br/>
		Coordinación de Desarrollo Tecnológico.<br/>
		<article class"licencia">
		Este sitio web está liberado bajo una licencia <a href="http://creativecommons.org/licenses/by/3.0/"target="_blank">Creative Commons Attribution 3.0 License</a> <img style="border:0;width:31px;height:31px"
            src="./images/creative_commons.gif"
            alt="¡Creative Commons!" />.<br/>
		</article>		
		<?php echo Yii::app()->params['adminEmail']?>
		
			<article class="herramientas">
			
        	<img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Logo.png"
            alt="¡HTML5!" />

            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Styling.png"
            alt="¡HTML5 CSS3!" />
            
            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Multimedia.png"
            alt="¡HTML5 Multimedia!" />
            
            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-3D-Effects.png"
            alt="¡HTML5 Multimedia!" />            
            
            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Semantics.png"
            alt="¡HTML5 Semantica!" />
            
			</article>
		

	</footer><!-- footer -->
	<article class="redes-sociales">
			<!--  <h4 align="right">Encuentranos por las Redes Sociales!!.</h4>-->
				<aside class="redes-sociales">
					<a>
					<img style="border:1;width:30px;height:30px" align="right"
            		src="./images/twitter.png"
            		alt="¡HTML5 Semantica!" />
            
            		<img style="border:1;width:30px;height:30px" align="right"
            		src="./images/facebook.png"
            		alt="¡HTML5 Semantica!" />
            		
            		<img style="border:1;width:30px;height:30px" align="right"
            		src="./images/googleplus.png"
            		alt="¡HTML5 Semantica!" />
				</aside>	
				
				
					<aside class="corazon">
						<a>
							<img style="border:1;width:58px;height:58px" align="left"
            			src="./images/Corazón-Venezolano.png"
            			alt="¡corazon venezolano!" />
					</aside>					
	</article>

</div><!-- page -->

</body>
</html>
