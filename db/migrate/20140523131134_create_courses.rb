class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :course_id
      t.string :name
      t.integer :day
      t.integer :time
      t.integer :total_student
      t.string :note

      t.timestamps
    end
  end
end
