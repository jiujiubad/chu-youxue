class CreateVotes < ActiveRecord::Migration[5.2]
  def change #（作品）投票
    create_table :votes do |t|
      t.references :work, foreign_key: true, index: true
      t.references :competition, foreign_key: true, index: true
      t.boolean  :del, null: false, default: false  # 删除

      t.timestamps
    end
  end
end
