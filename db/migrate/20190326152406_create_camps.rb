class CreateCamps < ActiveRecord::Migration[5.2]
  def change #训练营
    create_table :camps do |t|
      t.string   :title, null: false                  # 标题
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
