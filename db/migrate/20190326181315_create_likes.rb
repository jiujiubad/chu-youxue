class CreateLikes < ActiveRecord::Migration[5.2]
  def change #（作业）喜欢
    create_table :likes do |t|
      t.references :task, foreign_key: true, index: true
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
