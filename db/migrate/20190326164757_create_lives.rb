class CreateLives < ActiveRecord::Migration[5.2]
  def change #直播
    create_table :lives do |t|
      t.references :camp, foreign_key: true, index: true
      t.string   :name,  null: false                  # 标题
      t.text     :description                         # 描述
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
