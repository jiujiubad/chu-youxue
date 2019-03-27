class CreateFavorites < ActiveRecord::Migration[5.2]
  def change #（课程文章）收藏
    create_table :favorites do |t|
      t.references :post, foreign_key: true, index: true
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
