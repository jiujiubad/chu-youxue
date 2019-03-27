class CreateReplays < ActiveRecord::Migration[5.2]
  def change #（站内信）回复
    create_table :replays do |t|
      t.references :conversation, foreign_key: true, index: true
      t.text     :description, null: false            # 描述
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
