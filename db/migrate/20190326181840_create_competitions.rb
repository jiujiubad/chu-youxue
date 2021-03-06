class CreateCompetitions < ActiveRecord::Migration[5.2]
  def change #比赛
    create_table :competitions do |t|
      t.references :camp, foreign_key: true, index: true
      t.string   :name, null: false                   # 标题
      t.text     :description                         # 描述
      t.string   :image                               # 图片
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
