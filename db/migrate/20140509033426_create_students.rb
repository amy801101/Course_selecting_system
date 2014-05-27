class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :studentId
      t.string :name
      t.integer :dept

      t.timestamps
    end
  end
end
