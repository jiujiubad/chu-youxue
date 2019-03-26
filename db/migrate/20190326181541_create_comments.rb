class CreateComments < ActiveRecord::Migration[5.2]
  def change #（比赛作品）评论
    create_table :comments do |t|
      t.references :work, foreign_key: true, index: true
      t.references :competition, foreign_key: true, index: true
      t.text     :description, null: false            # 描述（评价）
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
