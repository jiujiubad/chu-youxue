class CreatePosts < ActiveRecord::Migration[5.2]
  def change #课程文章
    create_table :posts do |t|
      t.references :syllabus, foreign_key: true, index: true
      t.string   :name, null: false                   # 标题
      t.text     :description                         # 描述
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
