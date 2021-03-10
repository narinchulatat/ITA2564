<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Group;

/**
 * GroupSearch represents the model behind the search form of `app\models\group`.
 */
class GroupSearch extends Group
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'cat_id'], 'integer'],
            [['name', 'create_date'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        // $query = group::find();
        $query = group::find()->where(['cat_id' => 14]);

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'create_date' => $this->create_date,
            'cat_id' => $this->cat_id,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name]);

        return $dataProvider;
    }
    // public function searchGroup() {

    //     $cat_id =  Yii::$app->request->getQueryParam('cat_id');
    //     $query = group::find();
    //     $dataProvider = new ActiveDataProvider([
    //         'query' => $query->where(['cat_id' => $cat_id]),
    //     ]);
    //     return $dataProvider;
    // }
    public function searchIndex()
    {
        $query = group::find();
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }
    
    public function searchHa() {

        $query = group::find()->where(['cat_id' => 16]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchHad() {

      $query = group::find()->where(['cat_id' => 15]);
      $dataProvider = new ActiveDataProvider([
          'query' => $query,
      ]);
        return $dataProvider;
      }

      public function searchHadc() {

          $query = group::find()->where(['cat_id' => 17]);
          $dataProvider = new ActiveDataProvider([
              'query' => $query,
          ]);
          return $dataProvider;
      }

      public function searchHadcc() {

        $query = group::find()->where(['cat_id' => 18]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchHade() {

        $query = group::find()->where(['cat_id' => 19]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators1() {

        $query = group::find()->where(['cat_id' => 20]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators2() {

        $query = group::find()->where(['cat_id' => 21]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators3() {

        $query = group::find()->where(['cat_id' => 22]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators4() {

        $query = group::find()->where(['cat_id' => 23]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators5() {

        $query = group::find()->where(['cat_id' => 24]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators6() {

        $query = group::find()->where(['cat_id' => 25]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators7() {

        $query = group::find()->where(['cat_id' => 26]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators8() {

        $query = group::find()->where(['cat_id' => 27]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

    public function searchIndicators9() {

        $query = group::find()->where(['cat_id' => 28]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);
        return $dataProvider;
    }

}
