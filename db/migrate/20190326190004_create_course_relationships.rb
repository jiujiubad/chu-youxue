class CreateCourseRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :course_relationships do |t|
      t.references :user, foreign_key: true, index: true
      t.references :course, foreign_key: true, index: true

      t.timestamps
    end
  end
end
