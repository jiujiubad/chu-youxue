class CreateWorkRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :work_relationships do |t|
      t.references :user, foreign_key: true, index: true
      t.references :work, foreign_key: true, index: true

      t.timestamps
    end
  end
end
