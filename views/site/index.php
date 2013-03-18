<?php
/* @var $this SiteController */

$this->pageTitle=Yii::app()->name;
?>

<!--<h3>Bienvenidos a  <i><?php echo CHtml::encode(Yii::app()->name); ?> tu Web Tutorial de PostgreSQL.</i></h3>-->

<article class = "galeria">
<?php $this->widget('bootstrap.widgets.TbCarousel', array(
  'items'=>array(
      array(
		'image'=>'./images/condor-santo-cristo-merida-galeria.png',
		'label'=>'Cóndor Web Tutorial de PostgreSQL.',
		'caption'=>'Foto: Parque Sierra junto a un Cóndor.' . 
			   ' Simbolo de este Proyecto Socio-Tecnológico. '),
      array(
		'image'=>'http://placehold.it/830x400&text=Second+thumbnail',
		'label'=>'Second Thumbnail label',
		'caption'=>'Cras justo odio, dapibus ac facilisis in, egestas eget quam. ' .
			'Donec id elit non mi porta gravida at eget metus. ' .
			'Nullam id dolor id nibh ultricies vehicula ut id elit.'),
      array(
		'image'=>'http://placehold.it/830x400&text=Third+thumbnail',
		'label'=>'Third Thumbnail label',
		'caption'=>'Cras justo odio, dapibus ac facilisis in, egestas eget quam. ' .
			'Donec id elit non mi porta gravida at eget metus. ' .
			'Nullam id dolor id nibh ultricies vehicula ut id elit.'),
  ),
));?>
</article>




	<article class="Reseña">
		<p>Sitio Web desarrollado como <strong>Proyecto Socio-Tecnológico</strong> por estudiantes del <strong>Colegio Universitario de Caracas</strong>, del trayecto 3 del turno de la noche.</p>
	</article>
<!-- 	
<iframe src="http://player.vimeo.com/video/61741062" width="500" height="281" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe> <p><a href="http://vimeo.com/61741062">Laika Studio Tour - Animation</a> from <a href="http://vimeo.com/growfilm">Grow Film Company</a> on <a href="http://vimeo.com">Vimeo</a>.</p>

    <div class="video-container" align="right">
      <p>.mp4</p>
      <video poster="http://www.html5rocks.com/en/tutorials/video/basics/star.png" controls>
        <source src="http://www.html5rocks.com/en/tutorials/video/basics/Chrome_ImF.mp4" type='video/mp4; codecs="avc1.42E01E, mp4a.40.2"' />
      </video>
    </div>
    
    <div class="video-container">
      <p>.webm</p>
      <video poster="http://www.html5rocks.com/en/tutorials/video/basics/star.png" controls>
        <source src="http://www.html5rocks.com/en/tutorials/video/basics/Chrome_ImF.webm" type='video/webm; codecs="vp8, vorbis"' />
      </video>
    </div>
    <div class="video-container">
      <p>.ogv</p>
      <video poster="http://www.html5rocks.com/en/tutorials/video/basics/star.png" controls>
        <source src="http://www.html5rocks.com/en/tutorials/video/basics/Chrome_ImF.ogv" type='video/ogg; codecs="theora, vorbis"' />
      </video>
       -->

