<?php

/**
 * This is the model class for table "condor.temas".
 *
 * The followings are the available columns in table 'condor.temas':
 * @property integer $id_tema
 * @property string $nb_tema
 * @property string $des_temas
 * @property string $nb_usuario
 */
class Temas extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Temas the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'condor.temas';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nb_tema, des_temas, nb_usuario', 'required'),
			array('nb_tema', 'length', 'max'=>50),
			array('des_temas', 'length', 'max'=>60),
			array('nb_usuario', 'length', 'max'=>80),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_tema, nb_tema, des_temas, nb_usuario', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_tema' => 'Id Tema',
			'nb_tema' => 'Nb Tema',
			'des_temas' => 'Des Temas',
			'nb_usuario' => 'Nb Usuario',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_tema',$this->id_tema);
		$criteria->compare('nb_tema',$this->nb_tema,true);
		$criteria->compare('des_temas',$this->des_temas,true);
		$criteria->compare('nb_usuario',$this->nb_usuario,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}