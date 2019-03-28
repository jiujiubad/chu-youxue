class CreateMeetupGroups < ActiveRecord::Migration[5.2]
  def change #聚会
    create_table :meetup_groups do |t|
      t.references :camp, foreign_key: true, index: true
      t.string   :name, null: false                   # 标题
      t.text     :description                         # 活动详情
      t.string   :meetup_type                         # 活动类型（线上/线下）
      t.string   :meetup_time                         # 活动期限（单次/长期）
      t.string   :time_info                           # 活动时间
      t.string   :city                                # 城市
      t.string   :location                            # 活动地点
      t.boolean  :del,   null: false, default: false  # 删除

      t.timestamps
    end
  end
end
