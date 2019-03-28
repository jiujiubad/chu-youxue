class CreateCamps < ActiveRecord::Migration[5.2]
  def change #训练营
    create_table :camps do |t|
      t.string   :name, null: false                     # 标题
      t.text     :description                           # 描述
      t.datetime :is_hidden, null: false, default: true # 是否隐藏
      t.boolean  :del,   null: false, default: false    # 删除

      t.timestamps
    end
  end
end
