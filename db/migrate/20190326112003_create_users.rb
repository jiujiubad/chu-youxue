class CreateUsers < ActiveRecord::Migration[5.2]
  def change #用户
    create_table :users do |t|
      t.string    :name,             null: false                  # 名称
      t.string    :email,            null: false                  # 邮件
      t.boolean   :admin,            null: false, default: false  # 是否 admin
      t.boolean   :del,              null: false, default: false  # 删除
      t.string    :password_digest,  null: false                  # 密码
      t.boolean   :activated,        null: false, default: false  # 是否激活
      t.string    :activation_digest                              # 激活密码
      t.datetime  :activated_at                                   # 激活时间
      t.string    :remember_digest                                # 忘记密码
      t.string    :reset_digest                                   # 重置密码
      t.datetime  :reset_sent_at                                  # 重置密码时间
      t.string    :avatar                                         # 头像
      t.string    :github_name                                    # github 名称
      t.string    :wechat                                         # 微信账号

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
