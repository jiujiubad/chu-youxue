class CreateConversations < ActiveRecord::Migration[5.2]
  def change #会话（站内信）
    create_table :conversations do |t|
      t.references :camp, foreign_key: true, index: true
      t.string   :name, null: false                   # 标题
      t.text     :description                         # 描述
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
