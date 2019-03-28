class CreateSigninLogs < ActiveRecord::Migration[5.2]
  def change #登录信息
    create_table :signin_logs do |t|
      t.references :user, foreign_key: true, index: true
      t.string   :ip, null: false                    # IP
      t.string   :user_agent                         # UA
      t.string   :browser                            # 浏览设备
      t.string   :sys_os                             # 操作系统
      t.string   :hostname                           # 主机名
      t.string   :region                             # 地区
      t.string   :country                            # 国家
      t.string   :city                               # 城市
      t.string   :loc                                # 经纬度
      t.string   :org                                # IP所属公司
      t.integer  :role, null: false, default: 0      # 类型
      t.boolean  :del,  null: false, default: false  # 删除

      t.timestamps
    end
    add_index :signin_logs, :ip
  end
end
