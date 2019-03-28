class CreateSyllabuses < ActiveRecord::Migration[5.2]
  def change #课程大纲
    create_table :syllabuses do |t|
      t.references :course, foreign_key: true, index: true
      t.string  :name, null: false                   # 标题
      t.text    :description                         # 描述
      t.boolean :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
