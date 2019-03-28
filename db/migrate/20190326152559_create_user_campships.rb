class CreateUserCampships < ActiveRecord::Migration[5.2]
  def change
    create_table :user_campships do |t|
      t.references :user, foreign_key: true, index: true
      t.references :camp, foreign_key: true, index: true
      t.datetime :start_at    # 开始时间（即加入camp的时间）
      t.datetime :expired_at  # 过期时间（即退出camp的时间）

      t.timestamps
    end
  end
end
