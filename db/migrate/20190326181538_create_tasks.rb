class CreateTasks < ActiveRecord::Migration[5.2]
  def change #（课程文章）作业
    create_table :tasks do |t|
      t.references :post, foreign_key: true, index: true
      t.text     :content, null: false                # 问题描述
      t.text     :description                         # 答案描述
      t.string   :image                               # 图片
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
