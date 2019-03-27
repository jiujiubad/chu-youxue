class CreateWorks < ActiveRecord::Migration[5.2]
  def change #作品
    create_table :works do |t|
      t.references :competition, foreign_key: true, index: true
      t.string   :image                               # 图片
      t.string   :title, null: false                  # 标题
      t.text     :change_log                          # 更新日志
      t.string   :wechat_code                         # 微信二维码
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
