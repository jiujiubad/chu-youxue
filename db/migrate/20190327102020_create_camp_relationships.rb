class CreateCampRelationships < ActiveRecord::Migration[5.2]
  def change #用户、训练营中间表
    create_table :camp_relationships do |t|
      t.references :camp, foreign_key: true, index: true
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
